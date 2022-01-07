; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_setssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_setssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_ltv_ssidlist_new = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.an_req = type { i32, i32 }

@AN_RID_SSIDLIST = common dso_local global i32 0, align 4
@MAX_SSIDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Too many SSIDs only printing %d of %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"bad modifier %d: there are only %d SSID settings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @an_setssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_setssid(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.an_ltv_ssidlist_new*, align 8
  %8 = alloca %struct.an_req, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = getelementptr inbounds %struct.an_req, %struct.an_req* %8, i32 0, i32 0
  store i32 8, i32* %10, align 4
  %11 = load i32, i32* @AN_RID_SSIDLIST, align 4
  %12 = getelementptr inbounds %struct.an_req, %struct.an_req* %8, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @an_getval(i8* %13, %struct.an_req* %8)
  %15 = bitcast %struct.an_req* %8 to %struct.an_ltv_ssidlist_new*
  store %struct.an_ltv_ssidlist_new* %15, %struct.an_ltv_ssidlist_new** %7, align 8
  %16 = getelementptr inbounds %struct.an_req, %struct.an_req* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @MAX_SSIDS, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @MAX_SSIDS, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* @MAX_SSIDS, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %25, %3
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %30
  %40 = load %struct.an_ltv_ssidlist_new*, %struct.an_ltv_ssidlist_new** %7, align 8
  %41 = getelementptr inbounds %struct.an_ltv_ssidlist_new, %struct.an_ltv_ssidlist_new* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bzero(i32 %48, i32 4)
  %50 = load %struct.an_ltv_ssidlist_new*, %struct.an_ltv_ssidlist_new** %7, align 8
  %51 = getelementptr inbounds %struct.an_ltv_ssidlist_new, %struct.an_ltv_ssidlist_new* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @strlcpy(i32 %58, i8* %59, i32 4)
  %61 = load %struct.an_ltv_ssidlist_new*, %struct.an_ltv_ssidlist_new** %7, align 8
  %62 = getelementptr inbounds %struct.an_ltv_ssidlist_new, %struct.an_ltv_ssidlist_new* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @strlen(i32 %69)
  %71 = load %struct.an_ltv_ssidlist_new*, %struct.an_ltv_ssidlist_new** %7, align 8
  %72 = getelementptr inbounds %struct.an_ltv_ssidlist_new, %struct.an_ltv_ssidlist_new* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %70, i32* %78, align 4
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @an_setval(i8* %79, %struct.an_req* %8)
  %81 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @an_getval(i8*, %struct.an_req*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @an_setval(i8*, %struct.an_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
