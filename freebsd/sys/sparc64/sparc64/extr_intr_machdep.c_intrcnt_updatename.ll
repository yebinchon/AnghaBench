; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_intr_machdep.c_intrcnt_updatename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_intr_machdep.c_intrcnt_updatename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intrcnt_updatename.intrcnt_index = internal global i32 0, align 4
@intrcnt_updatename.stray_pil_index = internal global i32 0, align 4
@intrcnt_updatename.stray_vec_index = internal global i32 0, align 4
@intrcnt_lock = common dso_local global i32 0, align 4
@intrnames = common dso_local global i8* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"initalizing intr_countp\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"stray\00", align 1
@IV_MAX = common dso_local global i32 0, align 4
@intr_countp = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"pil\00", align 1
@PIL_MAX = common dso_local global i32 0, align 4
@pil_countp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @intrcnt_updatename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intrcnt_updatename(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @mtx_lock_spin(i32* @intrcnt_lock)
  %9 = load i8*, i8** @intrnames, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %3
  %15 = load i64, i64* @bootverbose, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i32, i32* @intrcnt_updatename.intrcnt_index, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @intrcnt_updatename.intrcnt_index, align 4
  %22 = call i64 @intrcnt_setname(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %23 = load i32, i32* @intrcnt_updatename.intrcnt_index, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @intrcnt_updatename.intrcnt_index, align 4
  store i32 %23, i32* @intrcnt_updatename.stray_vec_index, align 4
  %25 = load i32, i32* @intrcnt_updatename.stray_vec_index, align 4
  %26 = call i64 @intrcnt_setname(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %37, %19
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @IV_MAX, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* @intrcnt_updatename.stray_vec_index, align 4
  %33 = load i32*, i32** @intr_countp, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %27

40:                                               ; preds = %27
  %41 = load i32, i32* @intrcnt_updatename.intrcnt_index, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @intrcnt_updatename.intrcnt_index, align 4
  store i32 %41, i32* @intrcnt_updatename.stray_pil_index, align 4
  %43 = load i32, i32* @intrcnt_updatename.stray_pil_index, align 4
  %44 = call i64 @intrcnt_setname(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %55, %40
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PIL_MAX, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32, i32* @intrcnt_updatename.stray_pil_index, align 4
  %51 = load i32*, i32** @pil_countp, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %45

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %3
  %60 = load i8*, i8** %5, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %63
  %67 = load i32*, i32** @intr_countp, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @intrcnt_updatename.stray_vec_index, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load i32*, i32** @intr_countp, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %7, align 4
  br label %101

80:                                               ; preds = %66, %63
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load i32*, i32** @pil_countp, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @intrcnt_updatename.stray_pil_index, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load i32*, i32** @pil_countp, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %7, align 4
  br label %100

97:                                               ; preds = %83, %80
  %98 = load i32, i32* @intrcnt_updatename.intrcnt_index, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @intrcnt_updatename.intrcnt_index, align 4
  store i32 %98, i32* %7, align 4
  br label %100

100:                                              ; preds = %97, %91
  br label %101

101:                                              ; preds = %100, %74
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i64 @intrcnt_setname(i8* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %106, %101
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  %112 = load i32*, i32** @intr_countp, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  br label %122

116:                                              ; preds = %107
  %117 = load i32, i32* %7, align 4
  %118 = load i32*, i32** @pil_countp, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  br label %122

122:                                              ; preds = %116, %110
  %123 = call i32 @mtx_unlock_spin(i32* @intrcnt_lock)
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @intrcnt_setname(i8*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
