; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_setap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_setap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_ltv_aplist = type { i32, i32, i32, i32 }
%struct.an_req = type { i32, i32 }
%struct.ether_addr = type { i32 }

@AN_RID_APLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"badly formatted address\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"unknown action\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @an_setap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_setap(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.an_ltv_aplist*, align 8
  %8 = alloca %struct.an_req, align 4
  %9 = alloca %struct.ether_addr*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = getelementptr inbounds %struct.an_req, %struct.an_req* %8, i32 0, i32 0
  store i32 8, i32* %10, align 4
  %11 = load i32, i32* @AN_RID_APLIST, align 4
  %12 = getelementptr inbounds %struct.an_req, %struct.an_req* %8, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @an_getval(i8* %13, %struct.an_req* %8)
  %15 = bitcast %struct.an_req* %8 to %struct.an_ltv_aplist*
  store %struct.an_ltv_aplist* %15, %struct.an_ltv_aplist** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call %struct.ether_addr* @ether_aton(i8* %16)
  store %struct.ether_addr* %17, %struct.ether_addr** %9, align 8
  %18 = load %struct.ether_addr*, %struct.ether_addr** %9, align 8
  %19 = icmp eq %struct.ether_addr* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %3
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %68 [
    i32 131, label %24
    i32 130, label %35
    i32 129, label %46
    i32 128, label %57
  ]

24:                                               ; preds = %22
  %25 = load %struct.an_ltv_aplist*, %struct.an_ltv_aplist** %7, align 8
  %26 = getelementptr inbounds %struct.an_ltv_aplist, %struct.an_ltv_aplist* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %29 = call i32 @bzero(i32 %27, i32 %28)
  %30 = load %struct.ether_addr*, %struct.ether_addr** %9, align 8
  %31 = load %struct.an_ltv_aplist*, %struct.an_ltv_aplist** %7, align 8
  %32 = getelementptr inbounds %struct.an_ltv_aplist, %struct.an_ltv_aplist* %31, i32 0, i32 3
  %33 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %34 = call i32 @bcopy(%struct.ether_addr* %30, i32* %32, i32 %33)
  br label %70

35:                                               ; preds = %22
  %36 = load %struct.an_ltv_aplist*, %struct.an_ltv_aplist** %7, align 8
  %37 = getelementptr inbounds %struct.an_ltv_aplist, %struct.an_ltv_aplist* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %40 = call i32 @bzero(i32 %38, i32 %39)
  %41 = load %struct.ether_addr*, %struct.ether_addr** %9, align 8
  %42 = load %struct.an_ltv_aplist*, %struct.an_ltv_aplist** %7, align 8
  %43 = getelementptr inbounds %struct.an_ltv_aplist, %struct.an_ltv_aplist* %42, i32 0, i32 2
  %44 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %45 = call i32 @bcopy(%struct.ether_addr* %41, i32* %43, i32 %44)
  br label %70

46:                                               ; preds = %22
  %47 = load %struct.an_ltv_aplist*, %struct.an_ltv_aplist** %7, align 8
  %48 = getelementptr inbounds %struct.an_ltv_aplist, %struct.an_ltv_aplist* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %51 = call i32 @bzero(i32 %49, i32 %50)
  %52 = load %struct.ether_addr*, %struct.ether_addr** %9, align 8
  %53 = load %struct.an_ltv_aplist*, %struct.an_ltv_aplist** %7, align 8
  %54 = getelementptr inbounds %struct.an_ltv_aplist, %struct.an_ltv_aplist* %53, i32 0, i32 1
  %55 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %56 = call i32 @bcopy(%struct.ether_addr* %52, i32* %54, i32 %55)
  br label %70

57:                                               ; preds = %22
  %58 = load %struct.an_ltv_aplist*, %struct.an_ltv_aplist** %7, align 8
  %59 = getelementptr inbounds %struct.an_ltv_aplist, %struct.an_ltv_aplist* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %62 = call i32 @bzero(i32 %60, i32 %61)
  %63 = load %struct.ether_addr*, %struct.ether_addr** %9, align 8
  %64 = load %struct.an_ltv_aplist*, %struct.an_ltv_aplist** %7, align 8
  %65 = getelementptr inbounds %struct.an_ltv_aplist, %struct.an_ltv_aplist* %64, i32 0, i32 0
  %66 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %67 = call i32 @bcopy(%struct.ether_addr* %63, i32* %65, i32 %66)
  br label %70

68:                                               ; preds = %22
  %69 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %57, %46, %35, %24
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @an_setval(i8* %71, %struct.an_req* %8)
  %73 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @an_getval(i8*, %struct.an_req*) #1

declare dso_local %struct.ether_addr* @ether_aton(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bcopy(%struct.ether_addr*, i32*, i32) #1

declare dso_local i32 @an_setval(i8*, %struct.an_req*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
