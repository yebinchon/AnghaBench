; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_md_kthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_md_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.md_s = type { i64, i32, i32, i32, i8*, i32 (%struct.md_s*, %struct.bio*)*, i32, i32, i32 }
%struct.bio = type opaque
%struct.bio.0 = type { i64, i32, i32, i32, i32 }

@curthread = common dso_local global %struct.TYPE_5__* null, align 8
@PRIBIO = common dso_local global i32 0, align 4
@MD_VNODE = common dso_local global i64 0, align 8
@TDP_NORUNNINGBUF = common dso_local global i32 0, align 4
@MD_SHUTDOWN = common dso_local global i32 0, align 4
@MD_EXITING = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mdwait\00", align 1
@BIO_GETATTR = common dso_local global i64 0, align 8
@MD_VERIFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"GEOM::fwsectors\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"GEOM::fwheads\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"GEOM::candelete\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"GEOM::ident\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"MNT::verified\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@BIO_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @md_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_kthread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.md_s*, align 8
  %4 = alloca %struct.bio.0*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.md_s*
  store %struct.md_s* %8, %struct.md_s** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %10 = call i32 @thread_lock(%struct.TYPE_5__* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %12 = load i32, i32* @PRIBIO, align 4
  %13 = call i32 @sched_prio(%struct.TYPE_5__* %11, i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %15 = call i32 @thread_unlock(%struct.TYPE_5__* %14)
  %16 = load %struct.md_s*, %struct.md_s** %3, align 8
  %17 = getelementptr inbounds %struct.md_s, %struct.md_s* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MD_VNODE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @TDP_NORUNNINGBUF, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %1
  br label %28

28:                                               ; preds = %188, %54, %27
  %29 = load %struct.md_s*, %struct.md_s** %3, align 8
  %30 = getelementptr inbounds %struct.md_s, %struct.md_s* %29, i32 0, i32 7
  %31 = call i32 @mtx_lock(i32* %30)
  %32 = load %struct.md_s*, %struct.md_s** %3, align 8
  %33 = getelementptr inbounds %struct.md_s, %struct.md_s* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MD_SHUTDOWN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %28
  %39 = load i32, i32* @MD_EXITING, align 4
  %40 = load %struct.md_s*, %struct.md_s** %3, align 8
  %41 = getelementptr inbounds %struct.md_s, %struct.md_s* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.md_s*, %struct.md_s** %3, align 8
  %45 = getelementptr inbounds %struct.md_s, %struct.md_s* %44, i32 0, i32 7
  %46 = call i32 @mtx_unlock(i32* %45)
  %47 = call i32 @kproc_exit(i32 0)
  br label %48

48:                                               ; preds = %38, %28
  %49 = load %struct.md_s*, %struct.md_s** %3, align 8
  %50 = getelementptr inbounds %struct.md_s, %struct.md_s* %49, i32 0, i32 8
  %51 = call %struct.bio.0* @bioq_takefirst(i32* %50)
  store %struct.bio.0* %51, %struct.bio.0** %4, align 8
  %52 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %53 = icmp ne %struct.bio.0* %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load %struct.md_s*, %struct.md_s** %3, align 8
  %56 = load %struct.md_s*, %struct.md_s** %3, align 8
  %57 = getelementptr inbounds %struct.md_s, %struct.md_s* %56, i32 0, i32 7
  %58 = load i32, i32* @PRIBIO, align 4
  %59 = load i32, i32* @PDROP, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @msleep(%struct.md_s* %55, i32* %57, i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %28

62:                                               ; preds = %48
  %63 = load %struct.md_s*, %struct.md_s** %3, align 8
  %64 = getelementptr inbounds %struct.md_s, %struct.md_s* %63, i32 0, i32 7
  %65 = call i32 @mtx_unlock(i32* %64)
  %66 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %67 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BIO_GETATTR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %134

71:                                               ; preds = %62
  %72 = load %struct.md_s*, %struct.md_s** %3, align 8
  %73 = getelementptr inbounds %struct.md_s, %struct.md_s* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MD_VERIFY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %6, align 4
  %79 = load %struct.md_s*, %struct.md_s** %3, align 8
  %80 = getelementptr inbounds %struct.md_s, %struct.md_s* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %71
  %84 = load %struct.md_s*, %struct.md_s** %3, align 8
  %85 = getelementptr inbounds %struct.md_s, %struct.md_s* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %90 = load %struct.md_s*, %struct.md_s** %3, align 8
  %91 = getelementptr inbounds %struct.md_s, %struct.md_s* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @g_handleattr_int(%struct.bio.0* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %88
  %96 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %97 = load %struct.md_s*, %struct.md_s** %3, align 8
  %98 = getelementptr inbounds %struct.md_s, %struct.md_s* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @g_handleattr_int(%struct.bio.0* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %95, %83, %71
  %103 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %104 = call i64 @g_handleattr_int(%struct.bio.0* %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %95, %88
  store i32 -1, i32* %5, align 4
  br label %133

107:                                              ; preds = %102
  %108 = load %struct.md_s*, %struct.md_s** %3, align 8
  %109 = getelementptr inbounds %struct.md_s, %struct.md_s* %108, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %117 = load %struct.md_s*, %struct.md_s** %3, align 8
  %118 = getelementptr inbounds %struct.md_s, %struct.md_s* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @g_handleattr_str(%struct.bio.0* %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  store i32 -1, i32* %5, align 4
  br label %132

123:                                              ; preds = %115, %107
  %124 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i64 @g_handleattr_int(%struct.bio.0* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 -1, i32* %5, align 4
  br label %131

129:                                              ; preds = %123
  %130 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %129, %128
  br label %132

132:                                              ; preds = %131, %122
  br label %133

133:                                              ; preds = %132, %106
  br label %142

134:                                              ; preds = %62
  %135 = load %struct.md_s*, %struct.md_s** %3, align 8
  %136 = getelementptr inbounds %struct.md_s, %struct.md_s* %135, i32 0, i32 5
  %137 = load i32 (%struct.md_s*, %struct.bio*)*, i32 (%struct.md_s*, %struct.bio*)** %136, align 8
  %138 = load %struct.md_s*, %struct.md_s** %3, align 8
  %139 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %140 = bitcast %struct.bio.0* %139 to %struct.bio*
  %141 = call i32 %137(%struct.md_s* %138, %struct.bio* %140)
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %134, %133
  %143 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %144 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @BIO_READ, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %150 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @BIO_WRITE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %176

154:                                              ; preds = %148, %142
  %155 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %156 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %159 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* %5, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %164 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  br label %167

166:                                              ; preds = %154
  br label %167

167:                                              ; preds = %166, %162
  %168 = phi i32 [ %165, %162 ], [ 0, %166 ]
  %169 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %170 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 4
  %171 = load %struct.md_s*, %struct.md_s** %3, align 8
  %172 = getelementptr inbounds %struct.md_s, %struct.md_s* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %175 = call i32 @devstat_end_transaction_bio(i32 %173, %struct.bio.0* %174)
  br label %176

176:                                              ; preds = %167, %148
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, -1
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %181 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %184 = getelementptr inbounds %struct.bio.0, %struct.bio.0* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 4
  %185 = load %struct.bio.0*, %struct.bio.0** %4, align 8
  %186 = load i32, i32* %5, align 4
  %187 = call i32 @g_io_deliver(%struct.bio.0* %185, i32 %186)
  br label %188

188:                                              ; preds = %179, %176
  br label %28
}

declare dso_local i32 @thread_lock(%struct.TYPE_5__*) #1

declare dso_local i32 @sched_prio(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_5__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @kproc_exit(i32) #1

declare dso_local %struct.bio.0* @bioq_takefirst(i32*) #1

declare dso_local i32 @msleep(%struct.md_s*, i32*, i32, i8*, i32) #1

declare dso_local i64 @g_handleattr_int(%struct.bio.0*, i8*, i32) #1

declare dso_local i64 @g_handleattr_str(%struct.bio.0*, i8*, i8*) #1

declare dso_local i32 @devstat_end_transaction_bio(i32, %struct.bio.0*) #1

declare dso_local i32 @g_io_deliver(%struct.bio.0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
