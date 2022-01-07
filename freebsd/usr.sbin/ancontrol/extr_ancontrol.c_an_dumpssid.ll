; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_dumpssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_dumpssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_ltv_ssidlist_new = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.an_req = type { i32, i32 }

@AN_RID_SSIDLIST = common dso_local global i32 0, align 4
@MAX_SSIDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Too many SSIDs only printing %d of %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"SSID %2d:\09\09\09[ %.*s ]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @an_dumpssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_dumpssid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.an_ltv_ssidlist_new*, align 8
  %4 = alloca %struct.an_req, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = getelementptr inbounds %struct.an_req, %struct.an_req* %4, i32 0, i32 0
  store i32 8, i32* %7, align 4
  %8 = load i32, i32* @AN_RID_SSIDLIST, align 4
  %9 = getelementptr inbounds %struct.an_req, %struct.an_req* %4, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @an_getval(i8* %10, %struct.an_req* %4)
  %12 = getelementptr inbounds %struct.an_req, %struct.an_req* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = udiv i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX_SSIDS, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @MAX_SSIDS, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @MAX_SSIDS, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %21, %1
  %27 = bitcast %struct.an_req* %4 to %struct.an_ltv_ssidlist_new*
  store %struct.an_ltv_ssidlist_new* %27, %struct.an_ltv_ssidlist_new** %3, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %52, %26
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  %35 = load %struct.an_ltv_ssidlist_new*, %struct.an_ltv_ssidlist_new** %3, align 8
  %36 = getelementptr inbounds %struct.an_ltv_ssidlist_new, %struct.an_ltv_ssidlist_new* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.an_ltv_ssidlist_new*, %struct.an_ltv_ssidlist_new** %3, align 8
  %44 = getelementptr inbounds %struct.an_ltv_ssidlist_new, %struct.an_ltv_ssidlist_new* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %34, i8* %42, i32 %50)
  br label %52

52:                                               ; preds = %32
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %28

55:                                               ; preds = %28
  ret void
}

declare dso_local i32 @an_getval(i8*, %struct.an_req*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
