; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i32, i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"\AA\AA\03\00\00\00\08\06\00", align 1
@S_SEND_FRAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  %4 = load %struct.params*, %struct.params** %2, align 8
  %5 = getelementptr inbounds %struct.params, %struct.params* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %7, 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 %13, 4
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.params*, %struct.params** %2, align 8
  %17 = getelementptr inbounds %struct.params, %struct.params* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.params*, %struct.params** %2, align 8
  %22 = getelementptr inbounds %struct.params, %struct.params* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.params*, %struct.params** %2, align 8
  %27 = getelementptr inbounds %struct.params, %struct.params* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.params*, %struct.params** %2, align 8
  %29 = getelementptr inbounds %struct.params, %struct.params* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.params*, %struct.params** %2, align 8
  %32 = getelementptr inbounds %struct.params, %struct.params* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @memset(i32 %30, i32 0, i32 %33)
  %35 = load %struct.params*, %struct.params** %2, align 8
  %36 = getelementptr inbounds %struct.params, %struct.params* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memcpy(i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %39 = load %struct.params*, %struct.params** %2, align 8
  %40 = getelementptr inbounds %struct.params, %struct.params* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.params*, %struct.params** %2, align 8
  %43 = getelementptr inbounds %struct.params, %struct.params* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load %struct.params*, %struct.params** %2, align 8
  %45 = getelementptr inbounds %struct.params, %struct.params* %44, i32 0, i32 6
  store i64 0, i64* %45, align 8
  %46 = load %struct.params*, %struct.params** %2, align 8
  %47 = getelementptr inbounds %struct.params, %struct.params* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.params*, %struct.params** %2, align 8
  %51 = getelementptr inbounds %struct.params, %struct.params* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @S_SEND_FRAG, align 4
  %53 = load %struct.params*, %struct.params** %2, align 8
  %54 = getelementptr inbounds %struct.params, %struct.params* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
