; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rtadvctl/extr_rtadvctl.c_action_show_rdnss.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rtadvctl/extr_rtadvctl.c_action_show_rdnss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdnss = type { i32 }
%struct.rdnss_addr = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@SSBUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\09  %s (ltime=%s)\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @action_show_rdnss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_show_rdnss(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rdnss*, align 8
  %4 = alloca %struct.rdnss_addr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %14 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* @SSBUFLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %21 = load i8*, i8** %2, align 8
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %5, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  store i8* %25, i8** %9, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %74, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %30
  %36 = load i8*, i8** %9, align 8
  %37 = bitcast i8* %36 to %struct.rdnss*
  store %struct.rdnss* %37, %struct.rdnss** %3, align 8
  %38 = load %struct.rdnss*, %struct.rdnss** %3, align 8
  %39 = getelementptr inbounds %struct.rdnss, %struct.rdnss* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %6, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  store i8* %46, i8** %9, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %69, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load i8*, i8** %9, align 8
  %58 = bitcast i8* %57 to %struct.rdnss_addr*
  store %struct.rdnss_addr* %58, %struct.rdnss_addr** %4, align 8
  %59 = load i32, i32* @AF_INET6, align 4
  %60 = load %struct.rdnss_addr*, %struct.rdnss_addr** %4, align 8
  %61 = getelementptr inbounds %struct.rdnss_addr, %struct.rdnss_addr* %60, i32 0, i32 0
  %62 = trunc i64 %15 to i32
  %63 = call i8* @inet_ntop(i32 %59, i32* %61, i8* %17, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i8* @sec2str(i32 %64, i8* %20)
  %66 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %63, i8* %65)
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 4
  store i8* %68, i8** %9, align 8
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %51

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %72, %35
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %30

77:                                               ; preds = %30
  br label %78

78:                                               ; preds = %77, %1
  %79 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %79)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i8* @inet_ntop(i32, i32*, i8*, i32) #2

declare dso_local i8* @sec2str(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
