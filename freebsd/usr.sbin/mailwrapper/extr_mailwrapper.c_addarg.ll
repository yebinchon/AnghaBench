; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mailwrapper/extr_mailwrapper.c_addarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mailwrapper/extr_mailwrapper.c_addarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arglist = type { i32, i32, i32** }

@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arglist*, i8*)* @addarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addarg(%struct.arglist* %0, i8* %1) #0 {
  %3 = alloca %struct.arglist*, align 8
  %4 = alloca i8*, align 8
  store %struct.arglist* %0, %struct.arglist** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.arglist*, %struct.arglist** %3, align 8
  %6 = getelementptr inbounds %struct.arglist, %struct.arglist* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.arglist*, %struct.arglist** %3, align 8
  %9 = getelementptr inbounds %struct.arglist, %struct.arglist* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.arglist*, %struct.arglist** %3, align 8
  %14 = getelementptr inbounds %struct.arglist, %struct.arglist* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.arglist*, %struct.arglist** %3, align 8
  %18 = getelementptr inbounds %struct.arglist, %struct.arglist* %17, i32 0, i32 2
  %19 = load i32**, i32*** %18, align 8
  %20 = load %struct.arglist*, %struct.arglist** %3, align 8
  %21 = getelementptr inbounds %struct.arglist, %struct.arglist* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call i32** @realloc(i32** %19, i32 %25)
  %27 = load %struct.arglist*, %struct.arglist** %3, align 8
  %28 = getelementptr inbounds %struct.arglist, %struct.arglist* %27, i32 0, i32 2
  store i32** %26, i32*** %28, align 8
  %29 = load %struct.arglist*, %struct.arglist** %3, align 8
  %30 = getelementptr inbounds %struct.arglist, %struct.arglist* %29, i32 0, i32 2
  %31 = load i32**, i32*** %30, align 8
  %32 = icmp eq i32** %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %12
  %34 = load i32, i32* @EX_TEMPFAIL, align 4
  %35 = call i32 @err(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %12
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i8*, i8** %4, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.arglist*, %struct.arglist** %3, align 8
  %42 = getelementptr inbounds %struct.arglist, %struct.arglist* %41, i32 0, i32 2
  %43 = load i32**, i32*** %42, align 8
  %44 = load %struct.arglist*, %struct.arglist** %3, align 8
  %45 = getelementptr inbounds %struct.arglist, %struct.arglist* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32*, i32** %43, i64 %48
  store i32* null, i32** %49, align 8
  br label %67

50:                                               ; preds = %37
  %51 = load i8*, i8** %4, align 8
  %52 = call i32* @strdup(i8* %51)
  %53 = load %struct.arglist*, %struct.arglist** %3, align 8
  %54 = getelementptr inbounds %struct.arglist, %struct.arglist* %53, i32 0, i32 2
  %55 = load i32**, i32*** %54, align 8
  %56 = load %struct.arglist*, %struct.arglist** %3, align 8
  %57 = getelementptr inbounds %struct.arglist, %struct.arglist* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32*, i32** %55, i64 %60
  store i32* %52, i32** %61, align 8
  %62 = icmp eq i32* %52, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32, i32* @EX_TEMPFAIL, align 4
  %65 = call i32 @err(i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %50
  br label %67

67:                                               ; preds = %66, %40
  ret void
}

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
