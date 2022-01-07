; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_maybe_demote.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_maybe_demote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, %struct.proc* }
%struct.TYPE_12__ = type { i32 }
%struct.proc = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.mac_lomac = type { i32, i32, i32, i32 }
%struct.vnode = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.sbuf = type { i32 }
%struct.mac_lomac_proc = type { %struct.mac_lomac, i32 }
%struct.vattr = type { i64 }

@curthread = common dso_local global %struct.TYPE_11__* null, align 8
@MAC_LOMAC_FLAG_UPDATE = common dso_local global i32 0, align 4
@TDF_ASTPENDING = common dso_local global i32 0, align 4
@TDF_MACPEND = common dso_local global i32 0, align 4
@SBUF_AUTOEXTEND = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [108 x i8] c"LOMAC: level-%s subject p%dg%du%d:%s demoted to level %s after %s a level-%s %s (inode=%ju, mountpount=%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"LOMAC: level-%s subject p%dg%du%d:%s demoted to level %s after %s a level-%s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_lomac*, %struct.mac_lomac*, i8*, i8*, %struct.vnode*)* @maybe_demote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_demote(%struct.mac_lomac* %0, %struct.mac_lomac* %1, i8* %2, i8* %3, %struct.vnode* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mac_lomac*, align 8
  %8 = alloca %struct.mac_lomac*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.sbuf, align 4
  %13 = alloca %struct.sbuf, align 4
  %14 = alloca %struct.sbuf, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.mac_lomac, align 4
  %19 = alloca %struct.mac_lomac_proc*, align 8
  %20 = alloca %struct.vattr, align 8
  %21 = alloca %struct.proc*, align 8
  %22 = alloca i32, align 4
  store %struct.mac_lomac* %0, %struct.mac_lomac** %7, align 8
  store %struct.mac_lomac* %1, %struct.mac_lomac** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.vnode* %4, %struct.vnode** %11, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curthread, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = load %struct.proc*, %struct.proc** %24, align 8
  %26 = getelementptr inbounds %struct.proc, %struct.proc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.mac_lomac_proc* @PSLOT(i32 %27)
  store %struct.mac_lomac_proc* %28, %struct.mac_lomac_proc** %19, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curthread, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load %struct.proc*, %struct.proc** %30, align 8
  store %struct.proc* %31, %struct.proc** %21, align 8
  %32 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %19, align 8
  %33 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %32, i32 0, i32 1
  %34 = call i32 @mtx_lock(i32* %33)
  %35 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %19, align 8
  %36 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MAC_LOMAC_FLAG_UPDATE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %5
  %43 = load %struct.mac_lomac*, %struct.mac_lomac** %8, align 8
  %44 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %19, align 8
  %45 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %44, i32 0, i32 0
  %46 = call i64 @lomac_dominate_single(%struct.mac_lomac* %43, %struct.mac_lomac* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %19, align 8
  %50 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %49, i32 0, i32 1
  %51 = call i32 @mtx_unlock(i32* %50)
  store i32 0, i32* %6, align 4
  br label %195

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %5
  %54 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %19, align 8
  %55 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %54, i32 0, i32 0
  %56 = call i32 @bzero(%struct.mac_lomac* %55, i32 16)
  %57 = load %struct.mac_lomac*, %struct.mac_lomac** %8, align 8
  %58 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %19, align 8
  %59 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %58, i32 0, i32 0
  %60 = call i32 @lomac_copy_single(%struct.mac_lomac* %57, %struct.mac_lomac* %59)
  %61 = load %struct.mac_lomac*, %struct.mac_lomac** %7, align 8
  %62 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %19, align 8
  %63 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %62, i32 0, i32 0
  %64 = call i32 @lomac_copy_range(%struct.mac_lomac* %61, %struct.mac_lomac* %63)
  %65 = load %struct.mac_lomac*, %struct.mac_lomac** %8, align 8
  %66 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %65, i32 0, i32 1
  %67 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %19, align 8
  %68 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %68, i32 0, i32 3
  %70 = call i32 @lomac_dominate_element(i32* %66, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %53
  %73 = load %struct.mac_lomac*, %struct.mac_lomac** %8, align 8
  %74 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %19, align 8
  %77 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 4
  br label %79

79:                                               ; preds = %72, %53
  %80 = load %struct.mac_lomac*, %struct.mac_lomac** %8, align 8
  %81 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %19, align 8
  %84 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @MAC_LOMAC_FLAG_UPDATE, align 4
  %87 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %19, align 8
  %88 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curthread, align 8
  %93 = call i32 @thread_lock(%struct.TYPE_11__* %92)
  %94 = load i32, i32* @TDF_ASTPENDING, align 4
  %95 = load i32, i32* @TDF_MACPEND, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curthread, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curthread, align 8
  %102 = call i32 @thread_unlock(%struct.TYPE_11__* %101)
  %103 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %19, align 8
  %104 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %103, i32 0, i32 0
  %105 = call i32 @lomac_copy_single(%struct.mac_lomac* %104, %struct.mac_lomac* %18)
  %106 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %19, align 8
  %107 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %106, i32 0, i32 1
  %108 = call i32 @mtx_unlock(i32* %107)
  %109 = load i32, i32* @SBUF_AUTOEXTEND, align 4
  %110 = call i32 @sbuf_new(%struct.sbuf* %12, i32* null, i32 0, i32 %109)
  %111 = load %struct.mac_lomac*, %struct.mac_lomac** %7, align 8
  %112 = call i32 @lomac_to_string(%struct.sbuf* %12, %struct.mac_lomac* %111)
  %113 = call i32 @sbuf_finish(%struct.sbuf* %12)
  %114 = call i8* @sbuf_data(%struct.sbuf* %12)
  store i8* %114, i8** %15, align 8
  %115 = load i32, i32* @SBUF_AUTOEXTEND, align 4
  %116 = call i32 @sbuf_new(%struct.sbuf* %13, i32* null, i32 0, i32 %115)
  %117 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %19, align 8
  %118 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %117, i32 0, i32 0
  %119 = call i32 @lomac_to_string(%struct.sbuf* %13, %struct.mac_lomac* %118)
  %120 = call i32 @sbuf_finish(%struct.sbuf* %13)
  %121 = call i8* @sbuf_data(%struct.sbuf* %13)
  store i8* %121, i8** %17, align 8
  %122 = load i32, i32* @SBUF_AUTOEXTEND, align 4
  %123 = call i32 @sbuf_new(%struct.sbuf* %14, i32* null, i32 0, i32 %122)
  %124 = load %struct.mac_lomac*, %struct.mac_lomac** %8, align 8
  %125 = call i32 @lomac_to_string(%struct.sbuf* %14, %struct.mac_lomac* %124)
  %126 = call i32 @sbuf_finish(%struct.sbuf* %14)
  %127 = call i8* @sbuf_data(%struct.sbuf* %14)
  store i8* %127, i8** %16, align 8
  %128 = load %struct.proc*, %struct.proc** %21, align 8
  %129 = getelementptr inbounds %struct.proc, %struct.proc* %128, i32 0, i32 2
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %22, align 4
  %133 = load %struct.vnode*, %struct.vnode** %11, align 8
  %134 = icmp ne %struct.vnode* %133, null
  br i1 %134, label %135, label %171

135:                                              ; preds = %79
  %136 = load %struct.vnode*, %struct.vnode** %11, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curthread, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = call i64 @VOP_GETATTR(%struct.vnode* %136, %struct.vattr* %20, %struct.TYPE_12__* %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %171

142:                                              ; preds = %135
  %143 = load i32, i32* @LOG_INFO, align 4
  %144 = load i8*, i8** %15, align 8
  %145 = load %struct.proc*, %struct.proc** %21, align 8
  %146 = getelementptr inbounds %struct.proc, %struct.proc* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %22, align 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curthread, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.proc*, %struct.proc** %21, align 8
  %155 = getelementptr inbounds %struct.proc, %struct.proc* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i8*, i8** %17, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = load i8*, i8** %16, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = getelementptr inbounds %struct.vattr, %struct.vattr* %20, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = load %struct.vnode*, %struct.vnode** %11, align 8
  %165 = getelementptr inbounds %struct.vnode, %struct.vnode* %164, i32 0, i32 0
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i32, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, ...) @log(i32 %143, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0), i8* %144, i32 %147, i32 %148, i32 %153, i32 %156, i8* %157, i8* %158, i8* %159, i8* %160, i32 %163, i32 %169)
  br label %191

171:                                              ; preds = %135, %79
  %172 = load i32, i32* @LOG_INFO, align 4
  %173 = load i8*, i8** %15, align 8
  %174 = load %struct.proc*, %struct.proc** %21, align 8
  %175 = getelementptr inbounds %struct.proc, %struct.proc* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %22, align 4
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curthread, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.proc*, %struct.proc** %21, align 8
  %184 = getelementptr inbounds %struct.proc, %struct.proc* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i8*, i8** %17, align 8
  %187 = load i8*, i8** %9, align 8
  %188 = load i8*, i8** %16, align 8
  %189 = load i8*, i8** %10, align 8
  %190 = call i32 (i32, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, ...) @log(i32 %172, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i8* %173, i32 %176, i32 %177, i32 %182, i32 %185, i8* %186, i8* %187, i8* %188, i8* %189)
  br label %191

191:                                              ; preds = %171, %142
  %192 = call i32 @sbuf_delete(%struct.sbuf* %12)
  %193 = call i32 @sbuf_delete(%struct.sbuf* %13)
  %194 = call i32 @sbuf_delete(%struct.sbuf* %14)
  store i32 0, i32* %6, align 4
  br label %195

195:                                              ; preds = %191, %48
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local %struct.mac_lomac_proc* @PSLOT(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @lomac_dominate_single(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bzero(%struct.mac_lomac*, i32) #1

declare dso_local i32 @lomac_copy_single(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @lomac_copy_range(%struct.mac_lomac*, %struct.mac_lomac*) #1

declare dso_local i32 @lomac_dominate_element(i32*, i32*) #1

declare dso_local i32 @thread_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @sbuf_new(%struct.sbuf*, i32*, i32, i32) #1

declare dso_local i32 @lomac_to_string(%struct.sbuf*, %struct.mac_lomac*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

declare dso_local i64 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.TYPE_12__*) #1

declare dso_local i32 @log(i32, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
