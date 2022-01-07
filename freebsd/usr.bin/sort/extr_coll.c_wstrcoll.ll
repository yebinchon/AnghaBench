; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_wstrcoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_wstrcoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_value = type { i32 }

@debug_sort = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"; offset=%d\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"; k1=<\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"(%zu)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c", k2=<\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_value*, %struct.key_value*, i64)* @wstrcoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wstrcoll(%struct.key_value* %0, %struct.key_value* %1, i64 %2) #0 {
  %4 = alloca %struct.key_value*, align 8
  %5 = alloca %struct.key_value*, align 8
  %6 = alloca i64, align 8
  store %struct.key_value* %0, %struct.key_value** %4, align 8
  store %struct.key_value* %1, %struct.key_value** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* @debug_sort, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i32, i32* @stdout, align 4
  %18 = load %struct.key_value*, %struct.key_value** %4, align 8
  %19 = getelementptr inbounds %struct.key_value, %struct.key_value* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bwsprintf(i32 %17, i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.key_value*, %struct.key_value** %4, align 8
  %23 = getelementptr inbounds %struct.key_value, %struct.key_value* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @BWSLEN(i32 %24)
  %26 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @stdout, align 4
  %28 = load %struct.key_value*, %struct.key_value** %5, align 8
  %29 = getelementptr inbounds %struct.key_value, %struct.key_value* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bwsprintf(i32 %27, i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.key_value*, %struct.key_value** %5, align 8
  %33 = getelementptr inbounds %struct.key_value, %struct.key_value* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @BWSLEN(i32 %34)
  %36 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %16, %3
  %38 = load %struct.key_value*, %struct.key_value** %4, align 8
  %39 = getelementptr inbounds %struct.key_value, %struct.key_value* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.key_value*, %struct.key_value** %5, align 8
  %42 = getelementptr inbounds %struct.key_value, %struct.key_value* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @bwscoll(i32 %40, i32 %43, i64 %44)
  ret i32 %45
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @bwsprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @BWSLEN(i32) #1

declare dso_local i32 @bwscoll(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
