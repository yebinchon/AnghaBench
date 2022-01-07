; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_enable_tx_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_enable_tx_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_req = type { i32, i32 }
%struct.an_ltv_key = type { i32, i32*, i64 }
%struct.an_ltv_genconfig = type { i32 }

@AN_RID_GENCONFIG = common dso_local global i32 0, align 4
@AN_HOME_NETWORK = common dso_local global i32 0, align 4
@AN_RID_WEP_PERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @an_enable_tx_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_enable_tx_key(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.an_req, align 4
  %6 = alloca %struct.an_ltv_key*, align 8
  %7 = alloca %struct.an_ltv_genconfig*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call i32 @bzero(%struct.an_req* %5, i32 8)
  %9 = getelementptr inbounds %struct.an_req, %struct.an_req* %5, i32 0, i32 0
  store i32 4, i32* %9, align 4
  %10 = load i32, i32* @AN_RID_GENCONFIG, align 4
  %11 = getelementptr inbounds %struct.an_req, %struct.an_req* %5, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @an_getval(i8* %12, %struct.an_req* %5)
  %14 = bitcast %struct.an_req* %5 to %struct.an_ltv_genconfig*
  store %struct.an_ltv_genconfig* %14, %struct.an_ltv_genconfig** %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @atoi(i8* %15)
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @AN_HOME_NETWORK, align 4
  %20 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %7, align 8
  %21 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @AN_HOME_NETWORK, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %7, align 8
  %28 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %18
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @an_setval(i8* %32, %struct.an_req* %5)
  %34 = call i32 @bzero(%struct.an_req* %5, i32 8)
  %35 = bitcast %struct.an_req* %5 to %struct.an_ltv_key*
  store %struct.an_ltv_key* %35, %struct.an_ltv_key** %6, align 8
  %36 = load %struct.an_ltv_key*, %struct.an_ltv_key** %6, align 8
  %37 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %36, i32 0, i32 0
  store i32 65535, i32* %37, align 8
  %38 = load %struct.an_ltv_key*, %struct.an_ltv_key** %6, align 8
  %39 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @atoi(i8* %40)
  %42 = load %struct.an_ltv_key*, %struct.an_ltv_key** %6, align 8
  %43 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.an_ltv_key*, %struct.an_ltv_key** %6, align 8
  %47 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.an_ltv_key*, %struct.an_ltv_key** %6, align 8
  %51 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 0, i32* %53, align 4
  %54 = load %struct.an_ltv_key*, %struct.an_ltv_key** %6, align 8
  %55 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 0, i32* %57, align 4
  %58 = load %struct.an_ltv_key*, %struct.an_ltv_key** %6, align 8
  %59 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  store i32 0, i32* %61, align 4
  %62 = load %struct.an_ltv_key*, %struct.an_ltv_key** %6, align 8
  %63 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  store i32 0, i32* %65, align 4
  %66 = getelementptr inbounds %struct.an_req, %struct.an_req* %5, i32 0, i32 0
  store i32 24, i32* %66, align 4
  %67 = load i32, i32* @AN_RID_WEP_PERM, align 4
  %68 = getelementptr inbounds %struct.an_req, %struct.an_req* %5, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @an_setval(i8* %69, %struct.an_req* %5)
  ret void
}

declare dso_local i32 @bzero(%struct.an_req*, i32) #1

declare dso_local i32 @an_getval(i8*, %struct.an_req*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @an_setval(i8*, %struct.an_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
