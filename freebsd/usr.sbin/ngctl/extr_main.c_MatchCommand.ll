; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_main.c_MatchCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_main.c_MatchCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngcmd = type { i8*, i8** }

@WHITESPACE = common dso_local global i32 0, align 4
@MAX_CMD_ALIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngcmd*, i8*)* @MatchCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MatchCommand(%struct.ngcmd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ngcmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ngcmd* %0, %struct.ngcmd** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = load %struct.ngcmd*, %struct.ngcmd** %4, align 8
  %10 = getelementptr inbounds %struct.ngcmd, %struct.ngcmd* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* @WHITESPACE, align 4
  %13 = call i64 @strcspn(i8* %11, i32 %12)
  %14 = icmp sle i64 %8, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.ngcmd*, %struct.ngcmd** %4, align 8
  %18 = getelementptr inbounds %struct.ngcmd, %struct.ngcmd* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = call i64 @strncasecmp(i8* %16, i8* %19, i64 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %74

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %2
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %70, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MAX_CMD_ALIAS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.ngcmd*, %struct.ngcmd** %4, align 8
  %33 = getelementptr inbounds %struct.ngcmd, %struct.ngcmd* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br label %40

40:                                               ; preds = %31, %27
  %41 = phi i1 [ false, %27 ], [ %39, %31 ]
  br i1 %41, label %42, label %73

42:                                               ; preds = %40
  %43 = load %struct.ngcmd*, %struct.ngcmd** %4, align 8
  %44 = getelementptr inbounds %struct.ngcmd, %struct.ngcmd* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = icmp sge i64 %50, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %42
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.ngcmd*, %struct.ngcmd** %4, align 8
  %57 = getelementptr inbounds %struct.ngcmd, %struct.ngcmd* %56, i32 0, i32 1
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = call i64 @strncasecmp(i8* %55, i8* %62, i64 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %74

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %42
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %27

73:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %67, %24
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcspn(i8*, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
