; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_ethers.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/getent/extr_getent.c_ethers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_addr = type { i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@RV_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Enumeration not supported on ethers\0A\00", align 1
@RV_NOENUM = common dso_local global i32 0, align 4
@RV_NOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%-17s  %s\0A\00", align 1
@ETHERSPRINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @ethers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethers(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ether_addr, align 4
  %9 = alloca %struct.ether_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %12 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i8**, i8*** %4, align 8
  %22 = icmp ne i8** %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* @RV_OK, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @RV_NOENUM, align 4
  store i32 %31, i32* %11, align 4
  br label %75

32:                                               ; preds = %2
  store i32 2, i32* %10, align 4
  br label %33

33:                                               ; preds = %71, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %33
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call %struct.ether_addr* @ether_aton(i8* %42)
  store %struct.ether_addr* %43, %struct.ether_addr** %9, align 8
  %44 = icmp eq %struct.ether_addr* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  store %struct.ether_addr* %8, %struct.ether_addr** %9, align 8
  %46 = load i8**, i8*** %4, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.ether_addr*, %struct.ether_addr** %9, align 8
  %53 = call i64 @ether_hostton(i8* %51, %struct.ether_addr* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @RV_NOTFOUND, align 4
  store i32 %56, i32* %11, align 4
  br label %74

57:                                               ; preds = %45
  br label %66

58:                                               ; preds = %37
  store i8* %16, i8** %7, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.ether_addr*, %struct.ether_addr** %9, align 8
  %61 = call i64 @ether_ntohost(i8* %59, %struct.ether_addr* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @RV_NOTFOUND, align 4
  store i32 %64, i32* %11, align 4
  br label %74

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %57
  %67 = load %struct.ether_addr*, %struct.ether_addr** %9, align 8
  %68 = call i32 (%struct.ether_addr*, ...) bitcast (i32 (...)* @ether_ntoa to i32 (%struct.ether_addr*, ...)*)(%struct.ether_addr* %67)
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %68, i8* %69)
  br label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %33

74:                                               ; preds = %63, %55, %33
  br label %75

75:                                               ; preds = %74, %28
  %76 = load i32, i32* %11, align 4
  %77 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %77)
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local %struct.ether_addr* @ether_aton(i8*) #2

declare dso_local i64 @ether_hostton(i8*, %struct.ether_addr*) #2

declare dso_local i64 @ether_ntohost(i8*, %struct.ether_addr*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @ether_ntoa(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
