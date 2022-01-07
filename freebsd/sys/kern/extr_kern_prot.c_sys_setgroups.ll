; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setgroups.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_sys_setgroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.setgroups_args = type { i32, i32 }

@XU_NGROUPS = common dso_local global i32 0, align 4
@ngroups_max = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setgroups(%struct.thread* %0, %struct.setgroups_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.setgroups_args*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.setgroups_args* %1, %struct.setgroups_args** %5, align 8
  %12 = load i32, i32* @XU_NGROUPS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.setgroups_args*, %struct.setgroups_args** %5, align 8
  %17 = getelementptr inbounds %struct.setgroups_args, %struct.setgroups_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @ngroups_max, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %65

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @XU_NGROUPS, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @M_TEMP, align 4
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = call i32* @malloc(i32 %33, i32 %34, i32 %35)
  store i32* %36, i32** %8, align 8
  br label %38

37:                                               ; preds = %25
  store i32* %15, i32** %8, align 8
  br label %38

38:                                               ; preds = %37, %29
  %39 = load %struct.setgroups_args*, %struct.setgroups_args** %5, align 8
  %40 = getelementptr inbounds %struct.setgroups_args, %struct.setgroups_args* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @copyin(i32 %41, i32* %42, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load %struct.thread*, %struct.thread** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @kern_setgroups(%struct.thread* %51, i32 %52, i32* %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %50, %38
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @XU_NGROUPS, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* @M_TEMP, align 4
  %62 = call i32 @free(i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %65

65:                                               ; preds = %63, %23
  %66 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @malloc(i32, i32, i32) #2

declare dso_local i32 @copyin(i32, i32*, i32) #2

declare dso_local i32 @kern_setgroups(%struct.thread*, i32, i32*) #2

declare dso_local i32 @free(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
