; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kgmon/extr_kgmon.c_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kgmon/extr_kgmon.c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmvars = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@GMON_PROF_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot allocate zbuf space\00", align 1
@kflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"tickbuf zero: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"froms zero: %s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"tos zero: %s\00", align 1
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROF = common dso_local global i32 0, align 4
@GPROF_COUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"tickbuf zero\00", align 1
@GPROF_FROMS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"froms zero\00", align 1
@GPROF_TOS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"tos zero\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset(%struct.kvmvars* %0) #0 {
  %2 = alloca %struct.kvmvars*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [3 x i32], align 4
  store %struct.kvmvars* %0, %struct.kvmvars** %2, align 8
  %6 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %7 = load i32, i32* @GMON_PROF_OFF, align 4
  %8 = call i32 @setprof(%struct.kvmvars* %6, i32 %7)
  %9 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %10 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %14 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %21 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %26 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %33 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @malloc(i64 %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %3, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 (i32, i8*, ...) @errx(i32 12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i8*, i8** %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @bzero(i8* %44, i64 %45)
  %47 = load i64, i64* @kflag, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %127

49:                                               ; preds = %43
  %50 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %51 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %54 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %59 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @kvm_write(i32 %52, i64 %56, i8* %57, i64 %61)
  %63 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %64 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %62, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %49
  %69 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %70 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @kvm_geterr(i32 %71)
  %73 = call i32 (i32, i8*, ...) @errx(i32 13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %49
  %75 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %76 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %79 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %84 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @kvm_write(i32 %77, i64 %81, i8* %82, i64 %86)
  %88 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %89 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %87, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %74
  %94 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %95 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @kvm_geterr(i32 %96)
  %98 = call i32 (i32, i8*, ...) @errx(i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %93, %74
  %100 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %101 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %104 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i8*, i8** %3, align 8
  %108 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %109 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @kvm_write(i32 %102, i64 %106, i8* %107, i64 %111)
  %113 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %114 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %112, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %99
  %119 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %120 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @kvm_geterr(i32 %121)
  %123 = call i32 (i32, i8*, ...) @errx(i32 15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %118, %99
  %125 = load i8*, i8** %3, align 8
  %126 = call i32 @free(i8* %125)
  br label %176

127:                                              ; preds = %43
  %128 = call i32 @seteuid(i32 0)
  %129 = load i32, i32* @CTL_KERN, align 4
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* @KERN_PROF, align 4
  %132 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* @GPROF_COUNT, align 4
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %133, i32* %134, align 4
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %136 = load i8*, i8** %3, align 8
  %137 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %138 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @sysctl(i32* %135, i32 3, i32* null, i32* null, i8* %136, i64 %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %127
  %144 = call i32 @err(i32 13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %127
  %146 = load i32, i32* @GPROF_FROMS, align 4
  %147 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %146, i32* %147, align 4
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %149 = load i8*, i8** %3, align 8
  %150 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %151 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @sysctl(i32* %148, i32 3, i32* null, i32* null, i8* %149, i64 %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %145
  %157 = call i32 @err(i32 14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %145
  %159 = load i32, i32* @GPROF_TOS, align 4
  %160 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %159, i32* %160, align 4
  %161 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %162 = load i8*, i8** %3, align 8
  %163 = load %struct.kvmvars*, %struct.kvmvars** %2, align 8
  %164 = getelementptr inbounds %struct.kvmvars, %struct.kvmvars* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = call i64 @sysctl(i32* %161, i32 3, i32* null, i32* null, i8* %162, i64 %166)
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %158
  %170 = call i32 @err(i32 15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %158
  %172 = call i32 (...) @getuid()
  %173 = call i32 @seteuid(i32 %172)
  %174 = load i8*, i8** %3, align 8
  %175 = call i32 @free(i8* %174)
  br label %176

176:                                              ; preds = %171, %124
  ret void
}

declare dso_local i32 @setprof(%struct.kvmvars*, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i64 @kvm_write(i32, i64, i8*, i64) #1

declare dso_local i32 @kvm_geterr(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @seteuid(i32) #1

declare dso_local i64 @sysctl(i32*, i32, i32*, i32*, i8*, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getuid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
