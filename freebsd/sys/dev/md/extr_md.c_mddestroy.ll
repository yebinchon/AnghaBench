; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mddestroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_mddestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_s = type { i32, i32*, i32, i64, i64, i32*, i32*, %struct.TYPE_4__*, i32, i32, i32*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.thread = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@MD_PROVIDERGONE = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mddestroy\00", align 1
@MD_SHUTDOWN = common dso_local global i32 0, align 4
@MD_EXITING = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VV_MD = common dso_local global i32 0, align 4
@MD_READONLY = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@md_uh = common dso_local global i32 0, align 4
@M_MD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_s*, %struct.thread*)* @mddestroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mddestroy(%struct.md_s* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.md_s*, align 8
  %4 = alloca %struct.thread*, align 8
  store %struct.md_s* %0, %struct.md_s** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %5 = load %struct.md_s*, %struct.md_s** %3, align 8
  %6 = getelementptr inbounds %struct.md_s, %struct.md_s* %5, i32 0, i32 11
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = call i32 (...) @g_topology_lock()
  %11 = load %struct.md_s*, %struct.md_s** %3, align 8
  %12 = getelementptr inbounds %struct.md_s, %struct.md_s* %11, i32 0, i32 11
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @ENXIO, align 4
  %15 = call i32 @g_wither_geom(i64 %13, i32 %14)
  %16 = call i32 (...) @g_topology_unlock()
  %17 = load %struct.md_s*, %struct.md_s** %3, align 8
  %18 = getelementptr inbounds %struct.md_s, %struct.md_s* %17, i32 0, i32 8
  %19 = call i32 @mtx_lock(i32* %18)
  br label %20

20:                                               ; preds = %28, %9
  %21 = load %struct.md_s*, %struct.md_s** %3, align 8
  %22 = getelementptr inbounds %struct.md_s, %struct.md_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MD_PROVIDERGONE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.md_s*, %struct.md_s** %3, align 8
  %30 = getelementptr inbounds %struct.md_s, %struct.md_s* %29, i32 0, i32 0
  %31 = load %struct.md_s*, %struct.md_s** %3, align 8
  %32 = getelementptr inbounds %struct.md_s, %struct.md_s* %31, i32 0, i32 8
  %33 = load i32, i32* @PRIBIO, align 4
  %34 = call i32 @msleep(i32* %30, i32* %32, i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.md_s*, %struct.md_s** %3, align 8
  %37 = getelementptr inbounds %struct.md_s, %struct.md_s* %36, i32 0, i32 8
  %38 = call i32 @mtx_unlock(i32* %37)
  br label %39

39:                                               ; preds = %35, %2
  %40 = load %struct.md_s*, %struct.md_s** %3, align 8
  %41 = getelementptr inbounds %struct.md_s, %struct.md_s* %40, i32 0, i32 10
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.md_s*, %struct.md_s** %3, align 8
  %46 = getelementptr inbounds %struct.md_s, %struct.md_s* %45, i32 0, i32 10
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @devstat_remove_entry(i32* %47)
  %49 = load %struct.md_s*, %struct.md_s** %3, align 8
  %50 = getelementptr inbounds %struct.md_s, %struct.md_s* %49, i32 0, i32 10
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %44, %39
  %52 = load %struct.md_s*, %struct.md_s** %3, align 8
  %53 = getelementptr inbounds %struct.md_s, %struct.md_s* %52, i32 0, i32 8
  %54 = call i32 @mtx_lock(i32* %53)
  %55 = load i32, i32* @MD_SHUTDOWN, align 4
  %56 = load %struct.md_s*, %struct.md_s** %3, align 8
  %57 = getelementptr inbounds %struct.md_s, %struct.md_s* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.md_s*, %struct.md_s** %3, align 8
  %61 = call i32 @wakeup(%struct.md_s* %60)
  br label %62

62:                                               ; preds = %70, %51
  %63 = load %struct.md_s*, %struct.md_s** %3, align 8
  %64 = getelementptr inbounds %struct.md_s, %struct.md_s* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MD_EXITING, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load %struct.md_s*, %struct.md_s** %3, align 8
  %72 = getelementptr inbounds %struct.md_s, %struct.md_s* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.md_s*, %struct.md_s** %3, align 8
  %75 = getelementptr inbounds %struct.md_s, %struct.md_s* %74, i32 0, i32 8
  %76 = load i32, i32* @PRIBIO, align 4
  %77 = load i32, i32* @hz, align 4
  %78 = sdiv i32 %77, 10
  %79 = call i32 @msleep(i32* %73, i32* %75, i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %62

80:                                               ; preds = %62
  %81 = load %struct.md_s*, %struct.md_s** %3, align 8
  %82 = getelementptr inbounds %struct.md_s, %struct.md_s* %81, i32 0, i32 8
  %83 = call i32 @mtx_unlock(i32* %82)
  %84 = load %struct.md_s*, %struct.md_s** %3, align 8
  %85 = getelementptr inbounds %struct.md_s, %struct.md_s* %84, i32 0, i32 9
  %86 = call i32 @mtx_destroy(i32* %85)
  %87 = load %struct.md_s*, %struct.md_s** %3, align 8
  %88 = getelementptr inbounds %struct.md_s, %struct.md_s* %87, i32 0, i32 8
  %89 = call i32 @mtx_destroy(i32* %88)
  %90 = load %struct.md_s*, %struct.md_s** %3, align 8
  %91 = getelementptr inbounds %struct.md_s, %struct.md_s* %90, i32 0, i32 7
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = icmp ne %struct.TYPE_4__* %92, null
  br i1 %93, label %94, label %136

94:                                               ; preds = %80
  %95 = load %struct.md_s*, %struct.md_s** %3, align 8
  %96 = getelementptr inbounds %struct.md_s, %struct.md_s* %95, i32 0, i32 7
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* @LK_EXCLUSIVE, align 4
  %99 = load i32, i32* @LK_RETRY, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @vn_lock(%struct.TYPE_4__* %97, i32 %100)
  %102 = load i32, i32* @VV_MD, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.md_s*, %struct.md_s** %3, align 8
  %105 = getelementptr inbounds %struct.md_s, %struct.md_s* %104, i32 0, i32 7
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %103
  store i32 %109, i32* %107, align 4
  %110 = load %struct.md_s*, %struct.md_s** %3, align 8
  %111 = getelementptr inbounds %struct.md_s, %struct.md_s* %110, i32 0, i32 7
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = call i32 @VOP_UNLOCK(%struct.TYPE_4__* %112, i32 0)
  %114 = load %struct.md_s*, %struct.md_s** %3, align 8
  %115 = getelementptr inbounds %struct.md_s, %struct.md_s* %114, i32 0, i32 7
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load %struct.md_s*, %struct.md_s** %3, align 8
  %118 = getelementptr inbounds %struct.md_s, %struct.md_s* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @MD_READONLY, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %94
  %124 = load i32, i32* @FREAD, align 4
  br label %129

125:                                              ; preds = %94
  %126 = load i32, i32* @FREAD, align 4
  %127 = load i32, i32* @FWRITE, align 4
  %128 = or i32 %126, %127
  br label %129

129:                                              ; preds = %125, %123
  %130 = phi i32 [ %124, %123 ], [ %128, %125 ]
  %131 = load %struct.md_s*, %struct.md_s** %3, align 8
  %132 = getelementptr inbounds %struct.md_s, %struct.md_s* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.thread*, %struct.thread** %4, align 8
  %135 = call i32 @vn_close(%struct.TYPE_4__* %116, i32 %130, i32* %133, %struct.thread* %134)
  br label %136

136:                                              ; preds = %129, %80
  %137 = load %struct.md_s*, %struct.md_s** %3, align 8
  %138 = getelementptr inbounds %struct.md_s, %struct.md_s* %137, i32 0, i32 6
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.md_s*, %struct.md_s** %3, align 8
  %143 = getelementptr inbounds %struct.md_s, %struct.md_s* %142, i32 0, i32 6
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @crfree(i32* %144)
  br label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.md_s*, %struct.md_s** %3, align 8
  %148 = getelementptr inbounds %struct.md_s, %struct.md_s* %147, i32 0, i32 5
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.md_s*, %struct.md_s** %3, align 8
  %153 = getelementptr inbounds %struct.md_s, %struct.md_s* %152, i32 0, i32 5
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @vm_object_deallocate(i32* %154)
  br label %156

156:                                              ; preds = %151, %146
  %157 = load %struct.md_s*, %struct.md_s** %3, align 8
  %158 = getelementptr inbounds %struct.md_s, %struct.md_s* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load %struct.md_s*, %struct.md_s** %3, align 8
  %163 = load %struct.md_s*, %struct.md_s** %3, align 8
  %164 = getelementptr inbounds %struct.md_s, %struct.md_s* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @destroy_indir(%struct.md_s* %162, i64 %165)
  br label %167

167:                                              ; preds = %161, %156
  %168 = load %struct.md_s*, %struct.md_s** %3, align 8
  %169 = getelementptr inbounds %struct.md_s, %struct.md_s* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load %struct.md_s*, %struct.md_s** %3, align 8
  %174 = getelementptr inbounds %struct.md_s, %struct.md_s* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @uma_zdestroy(i64 %175)
  br label %177

177:                                              ; preds = %172, %167
  %178 = load %struct.md_s*, %struct.md_s** %3, align 8
  %179 = load i32, i32* @list, align 4
  %180 = call i32 @LIST_REMOVE(%struct.md_s* %178, i32 %179)
  %181 = load i32, i32* @md_uh, align 4
  %182 = load %struct.md_s*, %struct.md_s** %3, align 8
  %183 = getelementptr inbounds %struct.md_s, %struct.md_s* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @free_unr(i32 %181, i32 %184)
  %186 = load %struct.md_s*, %struct.md_s** %3, align 8
  %187 = load i32, i32* @M_MD, align 4
  %188 = call i32 @free(%struct.md_s* %186, i32 %187)
  ret i32 0
}

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @g_wither_geom(i64, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @devstat_remove_entry(i32*) #1

declare dso_local i32 @wakeup(%struct.md_s*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @vn_lock(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @vn_close(%struct.TYPE_4__*, i32, i32*, %struct.thread*) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

declare dso_local i32 @destroy_indir(%struct.md_s*, i64) #1

declare dso_local i32 @uma_zdestroy(i64) #1

declare dso_local i32 @LIST_REMOVE(%struct.md_s*, i32) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @free(%struct.md_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
