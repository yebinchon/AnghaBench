; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/lastcomm/extr_readrec.c_readrec_v2.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/lastcomm/extr_readrec.c_readrec_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acctv3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.acctv2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EOF = common dso_local global i32 0, align 4
@AC_COMM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.acctv3*)* @readrec_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readrec_v2(i32* %0, %struct.acctv3* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.acctv3*, align 8
  %6 = alloca %struct.acctv2, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.acctv3* %1, %struct.acctv3** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @fread_record(%struct.acctv2* %6, i32 44, i32* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @EOF, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EOF, align 4
  store i32 %13, i32* %3, align 4
  br label %70

14:                                               ; preds = %2
  %15 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %16 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %15, i32 0, i32 14
  store i64 0, i64* %16, align 8
  %17 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %18 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %17, i32 0, i32 0
  store i32 3, i32* %18, align 8
  %19 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %20 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %19, i32 0, i32 2
  store i32 64, i32* %20, align 8
  %21 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %22 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %21, i32 0, i32 1
  store i32 64, i32* %22, align 4
  %23 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %24 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %23, i32 0, i32 13
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.acctv2, %struct.acctv2* %6, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AC_COMM_LEN, align 4
  %29 = call i32 @memcpy(i32 %25, i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.acctv2, %struct.acctv2* %6, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %33 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %32, i32 0, i32 12
  store i32 %31, i32* %33, align 8
  %34 = getelementptr inbounds %struct.acctv2, %struct.acctv2* %6, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %37 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %36, i32 0, i32 11
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.acctv2, %struct.acctv2* %6, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %41 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %40, i32 0, i32 10
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.acctv2, %struct.acctv2* %6, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %45 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.acctv2, %struct.acctv2* %6, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %49 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 8
  %50 = getelementptr inbounds %struct.acctv2, %struct.acctv2* %6, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %53 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.acctv2, %struct.acctv2* %6, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %57 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = getelementptr inbounds %struct.acctv2, %struct.acctv2* %6, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %61 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds %struct.acctv2, %struct.acctv2* %6, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %65 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = getelementptr inbounds %struct.acctv2, %struct.acctv2* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.acctv3*, %struct.acctv3** %5, align 8
  %69 = getelementptr inbounds %struct.acctv3, %struct.acctv3* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %14, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @fread_record(%struct.acctv2*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
