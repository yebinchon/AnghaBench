; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_mem.c_div_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_mem.c_div_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.number = type { i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.number* @div_number(%struct.number* %0, %struct.number* %1, i64 %2) #0 {
  %4 = alloca %struct.number*, align 8
  %5 = alloca %struct.number*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.number*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.number* %0, %struct.number** %4, align 8
  store %struct.number* %1, %struct.number** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call %struct.number* (...) @new_number()
  store %struct.number* %10, %struct.number** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.number*, %struct.number** %7, align 8
  %13 = getelementptr inbounds %struct.number, %struct.number* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = load %struct.number*, %struct.number** %5, align 8
  %15 = getelementptr inbounds %struct.number, %struct.number* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.number*, %struct.number** %4, align 8
  %18 = getelementptr inbounds %struct.number, %struct.number* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @max(i64 %16, i64 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.number*, %struct.number** %5, align 8
  %22 = getelementptr inbounds %struct.number, %struct.number* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @BN_is_zero(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = call i32 @warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %56

28:                                               ; preds = %3
  %29 = load %struct.number*, %struct.number** %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @normalize(%struct.number* %29, i64 %30)
  %32 = load %struct.number*, %struct.number** %4, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.number*, %struct.number** %7, align 8
  %35 = getelementptr inbounds %struct.number, %struct.number* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = call i32 @normalize(%struct.number* %32, i64 %37)
  %39 = call i32* (...) @BN_CTX_new()
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @bn_checkp(i32* %40)
  %42 = load %struct.number*, %struct.number** %7, align 8
  %43 = getelementptr inbounds %struct.number, %struct.number* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.number*, %struct.number** %4, align 8
  %46 = getelementptr inbounds %struct.number, %struct.number* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.number*, %struct.number** %5, align 8
  %49 = getelementptr inbounds %struct.number, %struct.number* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @BN_div(i32 %44, i32* null, i32 %47, i32 %50, i32* %51)
  %53 = call i32 @bn_check(i32 %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @BN_CTX_free(i32* %54)
  br label %56

56:                                               ; preds = %28, %26
  %57 = load %struct.number*, %struct.number** %7, align 8
  ret %struct.number* %57
}

declare dso_local %struct.number* @new_number(...) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @BN_is_zero(i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @normalize(%struct.number*, i64) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @bn_checkp(i32*) #1

declare dso_local i32 @bn_check(i32) #1

declare dso_local i32 @BN_div(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
