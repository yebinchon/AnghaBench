; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_Respond.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_Respond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chap = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@CHAP_RESPONSE = common dso_local global i32 0, align 4
@MPPE_IsServer = common dso_local global i64 0, align 8
@CHAP_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chap*, i8*, i8*, i8, i32)* @chap_Respond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chap_Respond(%struct.chap* %0, i8* %1, i8* %2, i8 signext %3, i32 %4) #0 {
  %6 = alloca %struct.chap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.chap* %0, %struct.chap** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.chap*, %struct.chap** %6, align 8
  %15 = getelementptr inbounds %struct.chap, %struct.chap* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.chap*, %struct.chap** %6, align 8
  %19 = getelementptr inbounds %struct.chap, %struct.chap* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8, i8* %9, align 1
  %23 = load %struct.chap*, %struct.chap** %6, align 8
  %24 = getelementptr inbounds %struct.chap, %struct.chap* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.chap*, %struct.chap** %6, align 8
  %28 = getelementptr inbounds %struct.chap, %struct.chap* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i8* @chap_BuildAnswer(i8* %12, i8* %13, i32 %17, i32 %21, i8 signext %22, i32 %26, i32 %29, i32 %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %63

34:                                               ; preds = %5
  %35 = load %struct.chap*, %struct.chap** %6, align 8
  %36 = getelementptr inbounds %struct.chap, %struct.chap* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CHAP_RESPONSE, align 4
  %40 = load %struct.chap*, %struct.chap** %6, align 8
  %41 = getelementptr inbounds %struct.chap, %struct.chap* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %47, 1
  %49 = load i8*, i8** %7, align 8
  %50 = call signext i8 @strlen(i8* %49)
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %48, %51
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @ChapOutput(i32 %38, i32 %39, i32 %43, i8* %44, i32 %52, i8* %53)
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.chap*, %struct.chap** %6, align 8
  %60 = getelementptr inbounds %struct.chap, %struct.chap* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  store i64 0, i64* @MPPE_IsServer, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @free(i8* %61)
  br label %74

63:                                               ; preds = %5
  %64 = load %struct.chap*, %struct.chap** %6, align 8
  %65 = getelementptr inbounds %struct.chap, %struct.chap* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CHAP_FAILURE, align 4
  %69 = load %struct.chap*, %struct.chap** %6, align 8
  %70 = getelementptr inbounds %struct.chap, %struct.chap* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ChapOutput(i32 %67, i32 %68, i32 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 14, i8* null)
  br label %74

74:                                               ; preds = %63, %34
  ret void
}

declare dso_local i8* @chap_BuildAnswer(i8*, i8*, i32, i32, i8 signext, i32, i32, i32) #1

declare dso_local i32 @ChapOutput(i32, i32, i32, i8*, i32, i8*) #1

declare dso_local signext i8 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
