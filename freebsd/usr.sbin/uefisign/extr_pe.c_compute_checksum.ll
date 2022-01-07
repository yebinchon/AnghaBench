; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_pe.c_compute_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_pe.c_compute_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.executable = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"PE checksum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.executable*)* @compute_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_checksum(%struct.executable* %0) #0 {
  %2 = alloca %struct.executable*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.executable* %0, %struct.executable** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.executable*, %struct.executable** %2, align 8
  %7 = load %struct.executable*, %struct.executable** %2, align 8
  %8 = getelementptr inbounds %struct.executable, %struct.executable* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.executable*, %struct.executable** %2, align 8
  %11 = getelementptr inbounds %struct.executable, %struct.executable* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @range_check(%struct.executable* %6, i32 %9, i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.executable*, %struct.executable** %2, align 8
  %15 = getelementptr inbounds %struct.executable, %struct.executable* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = srem i32 %16, 2
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %74, %1
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 8
  %25 = load %struct.executable*, %struct.executable** %2, align 8
  %26 = getelementptr inbounds %struct.executable, %struct.executable* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.executable*, %struct.executable** %2, align 8
  %33 = getelementptr inbounds %struct.executable, %struct.executable* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.executable*, %struct.executable** %2, align 8
  %39 = getelementptr inbounds %struct.executable, %struct.executable* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 2
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36, %30
  store i64 0, i64* %4, align 8
  br label %62

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 8
  %48 = load %struct.executable*, %struct.executable** %2, align 8
  %49 = getelementptr inbounds %struct.executable, %struct.executable* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ule i64 %47, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.executable*, %struct.executable** %2, align 8
  %56 = getelementptr inbounds %struct.executable, %struct.executable* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = call i32 @memcpy(i64* %4, i64 %60, i32 8)
  br label %62

62:                                               ; preds = %44, %43
  %63 = load i64, i64* %4, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = ashr i32 %68, 16
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, 65535
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %5, align 4
  br label %21

77:                                               ; preds = %21
  %78 = load i32, i32* %3, align 4
  %79 = ashr i32 %78, 16
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, 65535
  store i32 %83, i32* %3, align 4
  %84 = load %struct.executable*, %struct.executable** %2, align 8
  %85 = getelementptr inbounds %struct.executable, %struct.executable* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @range_check(%struct.executable*, i32, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
