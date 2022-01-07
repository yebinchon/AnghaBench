; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_send_ad_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_send_ad_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carp_softc = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INT_MAX = common dso_local global i64 0, align 8
@CARP_SENDAD_MAX_ERRORS = common dso_local global i64 0, align 8
@carp_send_ad_error.fmt = internal constant [20 x i8] c"send error %d on %s\00", align 16
@IFNAMSIZ = common dso_local global i32 0, align 4
@V_carp_senderr_adj = common dso_local global i32 0, align 4
@CARP_SENDAD_MIN_SUCCESS = common dso_local global i64 0, align 8
@carp_send_ad_error.fmt.1 = internal constant [14 x i8] c"send ok on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carp_softc*, i32)* @carp_send_ad_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carp_send_ad_error(%struct.carp_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.carp_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.carp_softc* %0, %struct.carp_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %2
  %12 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %13 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INT_MAX, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %19 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %17, %11
  %23 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %24 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CARP_SENDAD_MAX_ERRORS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load i32, i32* @IFNAMSIZ, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 20, %30
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %5, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %36 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @carp_send_ad_error.fmt, i64 0, i64 0), i32 %34, i32 %39)
  %41 = load i32, i32* @V_carp_senderr_adj, align 4
  %42 = call i32 @carp_demote_adj(i32 %41, i8* %33)
  %43 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %43)
  br label %44

44:                                               ; preds = %28, %22
  %45 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %46 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %82

47:                                               ; preds = %2
  %48 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %49 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CARP_SENDAD_MAX_ERRORS, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %47
  %54 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %55 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = load i64, i64* @CARP_SENDAD_MIN_SUCCESS, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %53
  %61 = load i32, i32* @IFNAMSIZ, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 14, %62
  %64 = call i8* @llvm.stacksave()
  store i8* %64, i8** %7, align 8
  %65 = alloca i8, i64 %63, align 16
  store i64 %63, i64* %8, align 8
  %66 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %67 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @carp_send_ad_error.fmt.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @V_carp_senderr_adj, align 4
  %73 = sub nsw i32 0, %72
  %74 = call i32 @carp_demote_adj(i32 %73, i8* %65)
  %75 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %76 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %77)
  br label %81

78:                                               ; preds = %53, %47
  %79 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %80 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %78, %60
  br label %82

82:                                               ; preds = %81, %44
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #2

declare dso_local i32 @carp_demote_adj(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
