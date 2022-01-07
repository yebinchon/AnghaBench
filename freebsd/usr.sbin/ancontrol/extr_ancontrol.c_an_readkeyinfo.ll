; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_readkeyinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_readkeyinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_req = type { i32, i32 }
%struct.an_ltv_genconfig = type { i32 }
%struct.an_ltv_key = type { i32, i32, i32* }

@AN_RID_ACTUALCFG = common dso_local global i32 0, align 4
@AN_HOME_NETWORK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WEP Key status:\0A\00", align 1
@AN_RID_WEP_TEMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"\09Key %u is unset\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\09Key %u is set  40 bits\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\09Key %u is set 128 bits\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\09WEP Key %d has an unknown size %u\0A\00", align 1
@AN_RID_WEP_PERM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"\09The active transmit key is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @an_readkeyinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_readkeyinfo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.an_req, align 4
  %4 = alloca %struct.an_ltv_genconfig*, align 8
  %5 = alloca %struct.an_ltv_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = getelementptr inbounds %struct.an_req, %struct.an_req* %3, i32 0, i32 0
  store i32 8, i32* %8, align 4
  %9 = load i32, i32* @AN_RID_ACTUALCFG, align 4
  %10 = getelementptr inbounds %struct.an_req, %struct.an_req* %3, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @an_getval(i8* %11, %struct.an_req* %3)
  %13 = bitcast %struct.an_req* %3 to %struct.an_ltv_genconfig*
  store %struct.an_ltv_genconfig* %13, %struct.an_ltv_genconfig** %4, align 8
  %14 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %4, align 8
  %15 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AN_HOME_NETWORK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = call i32 @bzero(%struct.an_req* %3, i32 8)
  %24 = bitcast %struct.an_req* %3 to %struct.an_ltv_key*
  store %struct.an_ltv_key* %24, %struct.an_ltv_key** %5, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @AN_RID_WEP_TEMP, align 4
  %27 = getelementptr inbounds %struct.an_req, %struct.an_req* %3, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %68, %22
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 5
  br i1 %30, label %31, label %71

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.an_req, %struct.an_req* %3, i32 0, i32 0
  store i32 16, i32* %32, align 4
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @an_getval(i8* %33, %struct.an_req* %3)
  %35 = load %struct.an_ltv_key*, %struct.an_ltv_key** %5, align 8
  %36 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 65535
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %71

40:                                               ; preds = %31
  %41 = load %struct.an_ltv_key*, %struct.an_ltv_key** %5, align 8
  %42 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %59 [
    i32 0, label %44
    i32 5, label %49
    i32 13, label %54
  ]

44:                                               ; preds = %40
  %45 = load %struct.an_ltv_key*, %struct.an_ltv_key** %5, align 8
  %46 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %65

49:                                               ; preds = %40
  %50 = load %struct.an_ltv_key*, %struct.an_ltv_key** %5, align 8
  %51 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %65

54:                                               ; preds = %40
  %55 = load %struct.an_ltv_key*, %struct.an_ltv_key** %5, align 8
  %56 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %65

59:                                               ; preds = %40
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.an_ltv_key*, %struct.an_ltv_key** %5, align 8
  %62 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %54, %49, %44
  %66 = load i32, i32* @AN_RID_WEP_PERM, align 4
  %67 = getelementptr inbounds %struct.an_req, %struct.an_req* %3, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %28

71:                                               ; preds = %39, %28
  %72 = load %struct.an_ltv_key*, %struct.an_ltv_key** %5, align 8
  %73 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %72, i32 0, i32 0
  store i32 65535, i32* %73, align 8
  %74 = getelementptr inbounds %struct.an_req, %struct.an_req* %3, i32 0, i32 0
  store i32 16, i32* %74, align 4
  %75 = load i8*, i8** %2, align 8
  %76 = call i32 @an_getval(i8* %75, %struct.an_req* %3)
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 4, %77
  %79 = load %struct.an_ltv_key*, %struct.an_ltv_key** %5, align 8
  %80 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %78, %83
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  ret void
}

declare dso_local i32 @an_getval(i8*, %struct.an_req*) #1

declare dso_local i32 @bzero(%struct.an_req*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
