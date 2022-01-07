; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_setkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_setkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_req = type { i32, i32 }
%struct.an_ltv_key = type { i32, i32, i32* }

@.str = private unnamed_addr constant [55 x i8] c"encryption key must be no more than 18 characters long\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"encryption key must be 0, 5 or 13 bytes long\00", align 1
@AN_RID_WEP_PERM = common dso_local global i32 0, align 4
@AN_RID_WEP_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @an_setkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_setkeys(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.an_req, align 4
  %8 = alloca %struct.an_ltv_key*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @bzero(%struct.an_req* %7, i32 8)
  %10 = bitcast %struct.an_req* %7 to %struct.an_ltv_key*
  store %struct.an_ltv_key* %10, %struct.an_ltv_key** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = icmp sgt i32 %12, 28
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @err(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.an_ltv_key*, %struct.an_ltv_key** %8, align 8
  %19 = call i32 @an_str2key(i8* %17, %struct.an_ltv_key* %18)
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, 2
  %22 = load %struct.an_ltv_key*, %struct.an_ltv_key** %8, align 8
  %23 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.an_ltv_key*, %struct.an_ltv_key** %8, align 8
  %25 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %16
  %29 = load %struct.an_ltv_key*, %struct.an_ltv_key** %8, align 8
  %30 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load %struct.an_ltv_key*, %struct.an_ltv_key** %8, align 8
  %35 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 13
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = call i32 @err(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33, %28, %16
  %41 = load %struct.an_ltv_key*, %struct.an_ltv_key** %8, align 8
  %42 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.an_ltv_key*, %struct.an_ltv_key** %8, align 8
  %46 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 0, i32* %48, align 4
  %49 = load %struct.an_ltv_key*, %struct.an_ltv_key** %8, align 8
  %50 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 0, i32* %52, align 4
  %53 = load %struct.an_ltv_key*, %struct.an_ltv_key** %8, align 8
  %54 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  store i32 0, i32* %56, align 4
  %57 = load %struct.an_ltv_key*, %struct.an_ltv_key** %8, align 8
  %58 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32 0, i32* %60, align 4
  %61 = load %struct.an_ltv_key*, %struct.an_ltv_key** %8, align 8
  %62 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 1
  switch i32 %66, label %79 [
    i32 0, label %67
    i32 1, label %73
  ]

67:                                               ; preds = %40
  %68 = getelementptr inbounds %struct.an_req, %struct.an_req* %7, i32 0, i32 0
  store i32 16, i32* %68, align 4
  %69 = load i32, i32* @AN_RID_WEP_PERM, align 4
  %70 = getelementptr inbounds %struct.an_req, %struct.an_req* %7, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @an_setval(i8* %71, %struct.an_req* %7)
  br label %79

73:                                               ; preds = %40
  %74 = getelementptr inbounds %struct.an_req, %struct.an_req* %7, i32 0, i32 0
  store i32 16, i32* %74, align 4
  %75 = load i32, i32* @AN_RID_WEP_TEMP, align 4
  %76 = getelementptr inbounds %struct.an_req, %struct.an_req* %7, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @an_setval(i8* %77, %struct.an_req* %7)
  br label %79

79:                                               ; preds = %40, %73, %67
  ret void
}

declare dso_local i32 @bzero(%struct.an_req*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @an_str2key(i8*, %struct.an_ltv_key*) #1

declare dso_local i32 @an_setval(i8*, %struct.an_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
