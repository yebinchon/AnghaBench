; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_bsqrt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_bsqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.number = type { i32, i32* }

@.str = private unnamed_addr constant [31 x i8] c"square root of negative number\00", align 1
@bmachine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bsqrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsqrt() #0 {
  %1 = alloca %struct.number*, align 8
  %2 = alloca %struct.number*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %8 = call %struct.number* (...) @pop_number()
  store %struct.number* %8, %struct.number** %1, align 8
  %9 = load %struct.number*, %struct.number** %1, align 8
  %10 = icmp eq %struct.number* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %105

12:                                               ; preds = %0
  %13 = load %struct.number*, %struct.number** %1, align 8
  %14 = getelementptr inbounds %struct.number, %struct.number* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @BN_is_zero(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = call %struct.number* (...) @new_number()
  store %struct.number* %19, %struct.number** %2, align 8
  %20 = load %struct.number*, %struct.number** %2, align 8
  %21 = call i32 @push_number(%struct.number* %20)
  br label %102

22:                                               ; preds = %12
  %23 = load %struct.number*, %struct.number** %1, align 8
  %24 = getelementptr inbounds %struct.number, %struct.number* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @BN_is_negative(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %101

30:                                               ; preds = %22
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 4
  %32 = load %struct.number*, %struct.number** %1, align 8
  %33 = getelementptr inbounds %struct.number, %struct.number* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @max(i32 %31, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.number*, %struct.number** %1, align 8
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 2, %37
  %39 = call i32 @normalize(%struct.number* %36, i32 %38)
  %40 = load %struct.number*, %struct.number** %1, align 8
  %41 = getelementptr inbounds %struct.number, %struct.number* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32* @BN_dup(i32* %42)
  store i32* %43, i32** %3, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @bn_checkp(i32* %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @BN_num_bits(i32* %48)
  %50 = sdiv i32 %49, 2
  %51 = call i32 @BN_rshift(i32* %46, i32* %47, i32 %50)
  %52 = call i32 @bn_check(i32 %51)
  %53 = call i32* (...) @BN_new()
  store i32* %53, i32** %4, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @bn_checkp(i32* %54)
  %56 = call i32* (...) @BN_CTX_new()
  store i32* %56, i32** %5, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @bn_checkp(i32* %57)
  br label %59

59:                                               ; preds = %86, %30
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = call i32* @BN_copy(i32* %60, i32* %61)
  %63 = call i32 @bn_checkp(i32* %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load %struct.number*, %struct.number** %1, align 8
  %66 = getelementptr inbounds %struct.number, %struct.number* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @BN_div(i32* %64, i32* null, i32* %67, i32* %68, i32* %69)
  %71 = call i32 @bn_check(i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @BN_add(i32* %72, i32* %73, i32* %74)
  %76 = call i32 @bn_check(i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @BN_rshift1(i32* %77, i32* %78)
  %80 = call i32 @bn_check(i32 %79)
  %81 = load i32*, i32** %3, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i64 @bsqrt_stop(i32* %81, i32* %82, i32* %6)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %59
  br label %87

86:                                               ; preds = %59
  br label %59

87:                                               ; preds = %85
  %88 = call %struct.number* @bmalloc(i32 16)
  store %struct.number* %88, %struct.number** %2, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.number*, %struct.number** %2, align 8
  %91 = getelementptr inbounds %struct.number, %struct.number* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = load %struct.number*, %struct.number** %2, align 8
  %94 = getelementptr inbounds %struct.number, %struct.number* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @BN_free(i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @BN_CTX_free(i32* %97)
  %99 = load %struct.number*, %struct.number** %2, align 8
  %100 = call i32 @push_number(%struct.number* %99)
  br label %101

101:                                              ; preds = %87, %28
  br label %102

102:                                              ; preds = %101, %18
  %103 = load %struct.number*, %struct.number** %1, align 8
  %104 = call i32 @free_number(%struct.number* %103)
  br label %105

105:                                              ; preds = %102, %11
  ret void
}

declare dso_local %struct.number* @pop_number(...) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local %struct.number* @new_number(...) #1

declare dso_local i32 @push_number(%struct.number*) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @normalize(%struct.number*, i32) #1

declare dso_local i32* @BN_dup(i32*) #1

declare dso_local i32 @bn_checkp(i32*) #1

declare dso_local i32 @bn_check(i32) #1

declare dso_local i32 @BN_rshift(i32*, i32*, i32) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_add(i32*, i32*, i32*) #1

declare dso_local i32 @BN_rshift1(i32*, i32*) #1

declare dso_local i64 @bsqrt_stop(i32*, i32*, i32*) #1

declare dso_local %struct.number* @bmalloc(i32) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @free_number(%struct.number*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
