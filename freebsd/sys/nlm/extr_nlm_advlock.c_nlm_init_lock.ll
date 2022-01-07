; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_init_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_init_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.flock = type { i64, i64, i64 }
%struct.nlm4_lock = type { i32, i64, i64, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64, i8* }
%struct.TYPE_4__ = type { i64, i8* }

@SEEK_END = common dso_local global i64 0, align 8
@OFF_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLM_VERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d@\00", align 1
@prison0 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flock*, i32, i32, i64, i64, i8*, i64, %struct.nlm4_lock*, i8*)* @nlm_init_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_init_lock(%struct.flock* %0, i32 %1, i32 %2, i64 %3, i64 %4, i8* %5, i64 %6, %struct.nlm4_lock* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.flock*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.nlm4_lock*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.flock* %0, %struct.flock** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store %struct.nlm4_lock* %7, %struct.nlm4_lock** %18, align 8
  store i8* %8, i8** %19, align 8
  %23 = load %struct.flock*, %struct.flock** %11, align 8
  %24 = getelementptr inbounds %struct.flock, %struct.flock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SEEK_END, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %9
  %29 = load i64, i64* %17, align 8
  %30 = load i64, i64* @OFF_MAX, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = load %struct.flock*, %struct.flock** %11, align 8
  %34 = getelementptr inbounds %struct.flock, %struct.flock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i64, i64* %17, align 8
  %39 = load i64, i64* @OFF_MAX, align 8
  %40 = load %struct.flock*, %struct.flock** %11, align 8
  %41 = getelementptr inbounds %struct.flock, %struct.flock* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = icmp sgt i64 %38, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37, %28
  %46 = load i32, i32* @EOVERFLOW, align 4
  store i32 %46, i32* %10, align 4
  br label %157

47:                                               ; preds = %37, %32
  %48 = load i64, i64* %17, align 8
  %49 = load %struct.flock*, %struct.flock** %11, align 8
  %50 = getelementptr inbounds %struct.flock, %struct.flock* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  store i64 %52, i64* %21, align 8
  br label %72

53:                                               ; preds = %9
  %54 = load %struct.flock*, %struct.flock** %11, align 8
  %55 = getelementptr inbounds %struct.flock, %struct.flock* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SEEK_SET, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.flock*, %struct.flock** %11, align 8
  %61 = getelementptr inbounds %struct.flock, %struct.flock* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SEEK_CUR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59, %53
  %66 = load %struct.flock*, %struct.flock** %11, align 8
  %67 = getelementptr inbounds %struct.flock, %struct.flock* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %21, align 8
  br label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %10, align 4
  br label %157

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %47
  %73 = load i64, i64* %21, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %10, align 4
  br label %157

77:                                               ; preds = %72
  %78 = load %struct.flock*, %struct.flock** %11, align 8
  %79 = getelementptr inbounds %struct.flock, %struct.flock* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load %struct.flock*, %struct.flock** %11, align 8
  %84 = getelementptr inbounds %struct.flock, %struct.flock* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 0, %85
  store i64 %86, i64* %22, align 8
  %87 = load i64, i64* %22, align 8
  %88 = load i64, i64* %21, align 8
  %89 = sub nsw i64 %88, %87
  store i64 %89, i64* %21, align 8
  %90 = load i64, i64* %21, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %10, align 4
  br label %157

94:                                               ; preds = %82
  br label %99

95:                                               ; preds = %77
  %96 = load %struct.flock*, %struct.flock** %11, align 8
  %97 = getelementptr inbounds %struct.flock, %struct.flock* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %22, align 8
  br label %99

99:                                               ; preds = %95, %94
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* @NLM_VERS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load i64, i64* %21, align 8
  %105 = icmp sgt i64 %104, 4294967295
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i64, i64* %22, align 8
  %108 = icmp sgt i64 %107, 4294967295
  br i1 %108, label %109, label %111

109:                                              ; preds = %106, %103
  %110 = load i32, i32* @EOVERFLOW, align 4
  store i32 %110, i32* %10, align 4
  br label %157

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %99
  %113 = load i8*, i8** %19, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @snprintf(i8* %113, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %19, align 8
  %117 = call i64 @strlen(i8* %116)
  store i64 %117, i64* %20, align 8
  %118 = load i8*, i8** %19, align 8
  %119 = load i64, i64* %20, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i64, i64* %20, align 8
  %122 = sub i64 32, %121
  %123 = trunc i64 %122 to i32
  %124 = call i32 @getcredhostname(i32* null, i8* %120, i32 %123)
  %125 = load i8*, i8** %19, align 8
  %126 = call i64 @strlen(i8* %125)
  store i64 %126, i64* %20, align 8
  %127 = load %struct.nlm4_lock*, %struct.nlm4_lock** %18, align 8
  %128 = call i32 @memset(%struct.nlm4_lock* %127, i32 0, i32 64)
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @prison0, i32 0, i32 0), align 4
  %130 = load %struct.nlm4_lock*, %struct.nlm4_lock** %18, align 8
  %131 = getelementptr inbounds %struct.nlm4_lock, %struct.nlm4_lock* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 8
  %132 = load i64, i64* %15, align 8
  %133 = load %struct.nlm4_lock*, %struct.nlm4_lock** %18, align 8
  %134 = getelementptr inbounds %struct.nlm4_lock, %struct.nlm4_lock* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i64 %132, i64* %135, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = load %struct.nlm4_lock*, %struct.nlm4_lock** %18, align 8
  %138 = getelementptr inbounds %struct.nlm4_lock, %struct.nlm4_lock* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  store i8* %136, i8** %139, align 8
  %140 = load i64, i64* %20, align 8
  %141 = load %struct.nlm4_lock*, %struct.nlm4_lock** %18, align 8
  %142 = getelementptr inbounds %struct.nlm4_lock, %struct.nlm4_lock* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  store i64 %140, i64* %143, align 8
  %144 = load i8*, i8** %19, align 8
  %145 = load %struct.nlm4_lock*, %struct.nlm4_lock** %18, align 8
  %146 = getelementptr inbounds %struct.nlm4_lock, %struct.nlm4_lock* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  store i8* %144, i8** %147, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.nlm4_lock*, %struct.nlm4_lock** %18, align 8
  %150 = getelementptr inbounds %struct.nlm4_lock, %struct.nlm4_lock* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load i64, i64* %21, align 8
  %152 = load %struct.nlm4_lock*, %struct.nlm4_lock** %18, align 8
  %153 = getelementptr inbounds %struct.nlm4_lock, %struct.nlm4_lock* %152, i32 0, i32 2
  store i64 %151, i64* %153, align 8
  %154 = load i64, i64* %22, align 8
  %155 = load %struct.nlm4_lock*, %struct.nlm4_lock** %18, align 8
  %156 = getelementptr inbounds %struct.nlm4_lock, %struct.nlm4_lock* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  store i32 0, i32* %10, align 4
  br label %157

157:                                              ; preds = %112, %109, %92, %75, %69, %45
  %158 = load i32, i32* %10, align 4
  ret i32 %158
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @getcredhostname(i32*, i8*, i32) #1

declare dso_local i32 @memset(%struct.nlm4_lock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
