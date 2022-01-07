; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_str2key.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_str2key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_ltv_key = type { i32, i32* }

@.str = private unnamed_addr constant [35 x i8] c"hex strings must be of even length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.an_ltv_key*)* @an_str2key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_str2key(i8* %0, %struct.an_ltv_key* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.an_ltv_key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.an_ltv_key* %1, %struct.an_ltv_key** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 48
  br i1 %12, label %13, label %88

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 120
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 88
  br i1 %24, label %25, label %88

25:                                               ; preds = %19, %13
  store i32 0, i32* %5, align 4
  %26 = load %struct.an_ltv_key*, %struct.an_ltv_key** %4, align 8
  %27 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** %7, align 8
  store i32 2, i32* %6, align 4
  br label %31

31:                                               ; preds = %71, %25
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %39, %31
  %49 = phi i1 [ false, %31 ], [ %47, %39 ]
  br i1 %49, label %50, label %74

50:                                               ; preds = %48
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @an_hex2int(i8 signext %55)
  %57 = shl i32 %56, 4
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @an_hex2int(i8 signext %63)
  %65 = add nsw i32 %57, %64
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %50
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %6, align 4
  br label %31

74:                                               ; preds = %48
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %74
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.an_ltv_key*, %struct.an_ltv_key** %4, align 8
  %87 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %100

88:                                               ; preds = %19, %2
  %89 = load i8*, i8** %3, align 8
  %90 = load %struct.an_ltv_key*, %struct.an_ltv_key** %4, align 8
  %91 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = call i32 @strlen(i8* %93)
  %95 = call i32 @bcopy(i8* %89, i32* %92, i32 %94)
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = load %struct.an_ltv_key*, %struct.an_ltv_key** %4, align 8
  %99 = getelementptr inbounds %struct.an_ltv_key, %struct.an_ltv_key* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %88, %84
  ret void
}

declare dso_local i32 @an_hex2int(i8 signext) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @bcopy(i8*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
