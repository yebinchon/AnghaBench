; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_bdivmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_bdivmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.number = type { i32, i64 }

@bmachine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bdivmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdivmod() #0 {
  %1 = alloca %struct.number*, align 8
  %2 = alloca %struct.number*, align 8
  %3 = alloca %struct.number*, align 8
  %4 = alloca %struct.number*, align 8
  %5 = alloca %struct.number*, align 8
  %6 = alloca %struct.number*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = call %struct.number* (...) @pop_number()
  store %struct.number* %9, %struct.number** %1, align 8
  %10 = load %struct.number*, %struct.number** %1, align 8
  %11 = icmp eq %struct.number* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %114

13:                                               ; preds = %0
  %14 = call %struct.number* (...) @pop_number()
  store %struct.number* %14, %struct.number** %2, align 8
  %15 = load %struct.number*, %struct.number** %2, align 8
  %16 = icmp eq %struct.number* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.number*, %struct.number** %1, align 8
  %19 = call i32 @push_number(%struct.number* %18)
  br label %114

20:                                               ; preds = %13
  %21 = call %struct.number* (...) @new_number()
  store %struct.number* %21, %struct.number** %5, align 8
  %22 = call %struct.number* (...) @new_number()
  store %struct.number* %22, %struct.number** %4, align 8
  %23 = call %struct.number* (...) @new_number()
  store %struct.number* %23, %struct.number** %6, align 8
  %24 = load %struct.number*, %struct.number** %1, align 8
  %25 = getelementptr inbounds %struct.number, %struct.number* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.number*, %struct.number** %2, align 8
  %28 = getelementptr inbounds %struct.number, %struct.number* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @max(i64 %26, i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = load %struct.number*, %struct.number** %5, align 8
  %32 = getelementptr inbounds %struct.number, %struct.number* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.number*, %struct.number** %6, align 8
  %35 = getelementptr inbounds %struct.number, %struct.number* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %37 = load %struct.number*, %struct.number** %4, align 8
  %38 = getelementptr inbounds %struct.number, %struct.number* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.number*, %struct.number** %1, align 8
  %40 = getelementptr inbounds %struct.number, %struct.number* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.number*, %struct.number** %2, align 8
  %43 = getelementptr inbounds %struct.number, %struct.number* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @max(i64 %41, i64 %44)
  store i64 %45, i64* %8, align 8
  %46 = load %struct.number*, %struct.number** %1, align 8
  %47 = getelementptr inbounds %struct.number, %struct.number* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @BN_is_zero(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %20
  %52 = call i32 @warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %103

53:                                               ; preds = %20
  %54 = load %struct.number*, %struct.number** %1, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @normalize(%struct.number* %54, i64 %55)
  %57 = load %struct.number*, %struct.number** %2, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @normalize(%struct.number* %57, i64 %58)
  %60 = call i32* (...) @BN_CTX_new()
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @bn_checkp(i32* %61)
  %63 = load %struct.number*, %struct.number** %5, align 8
  %64 = getelementptr inbounds %struct.number, %struct.number* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.number*, %struct.number** %6, align 8
  %67 = getelementptr inbounds %struct.number, %struct.number* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.number*, %struct.number** %2, align 8
  %70 = getelementptr inbounds %struct.number, %struct.number* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.number*, %struct.number** %1, align 8
  %73 = getelementptr inbounds %struct.number, %struct.number* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @BN_div(i32 %65, i32 %68, i32 %71, i32 %74, i32* %75)
  %77 = call i32 @bn_check(i32 %76)
  %78 = load %struct.number*, %struct.number** %6, align 8
  %79 = load %struct.number*, %struct.number** %1, align 8
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %81 = call %struct.number* @div_number(%struct.number* %78, %struct.number* %79, i64 %80)
  store %struct.number* %81, %struct.number** %3, align 8
  %82 = load %struct.number*, %struct.number** %5, align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bmachine, i32 0, i32 0), align 8
  %84 = call i32 @normalize(%struct.number* %82, i64 %83)
  %85 = load %struct.number*, %struct.number** %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @normalize(%struct.number* %85, i64 %86)
  %88 = load %struct.number*, %struct.number** %4, align 8
  %89 = getelementptr inbounds %struct.number, %struct.number* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.number*, %struct.number** %5, align 8
  %92 = getelementptr inbounds %struct.number, %struct.number* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.number*, %struct.number** %3, align 8
  %95 = getelementptr inbounds %struct.number, %struct.number* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @BN_add(i32 %90, i32 %93, i32 %96)
  %98 = call i32 @bn_check(i32 %97)
  %99 = load %struct.number*, %struct.number** %3, align 8
  %100 = call i32 @free_number(%struct.number* %99)
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @BN_CTX_free(i32* %101)
  br label %103

103:                                              ; preds = %53, %51
  %104 = load %struct.number*, %struct.number** %4, align 8
  %105 = call i32 @push_number(%struct.number* %104)
  %106 = load %struct.number*, %struct.number** %6, align 8
  %107 = call i32 @push_number(%struct.number* %106)
  %108 = load %struct.number*, %struct.number** %5, align 8
  %109 = call i32 @free_number(%struct.number* %108)
  %110 = load %struct.number*, %struct.number** %1, align 8
  %111 = call i32 @free_number(%struct.number* %110)
  %112 = load %struct.number*, %struct.number** %2, align 8
  %113 = call i32 @free_number(%struct.number* %112)
  br label %114

114:                                              ; preds = %103, %17, %12
  ret void
}

declare dso_local %struct.number* @pop_number(...) #1

declare dso_local i32 @push_number(%struct.number*) #1

declare dso_local %struct.number* @new_number(...) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @BN_is_zero(i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @normalize(%struct.number*, i64) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @bn_checkp(i32*) #1

declare dso_local i32 @bn_check(i32) #1

declare dso_local i32 @BN_div(i32, i32, i32, i32, i32*) #1

declare dso_local %struct.number* @div_number(%struct.number*, %struct.number*, i64) #1

declare dso_local i32 @BN_add(i32, i32, i32) #1

declare dso_local i32 @free_number(%struct.number*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
