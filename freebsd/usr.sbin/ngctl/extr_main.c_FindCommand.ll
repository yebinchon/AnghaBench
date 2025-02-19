; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_main.c_FindCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_main.c_FindCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngcmd = type { i32 }

@cmds = common dso_local global %struct.ngcmd** null, align 8
@.str = private unnamed_addr constant [24 x i8] c"\22%s\22: ambiguous command\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\22%s\22: unknown command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ngcmd* (i8*)* @FindCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ngcmd* @FindCommand(i8* %0) #0 {
  %2 = alloca %struct.ngcmd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %31, %1
  %7 = load %struct.ngcmd**, %struct.ngcmd*** @cmds, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.ngcmd*, %struct.ngcmd** %7, i64 %9
  %11 = load %struct.ngcmd*, %struct.ngcmd** %10, align 8
  %12 = icmp ne %struct.ngcmd* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %6
  %14 = load %struct.ngcmd**, %struct.ngcmd*** @cmds, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ngcmd*, %struct.ngcmd** %14, i64 %16
  %18 = load %struct.ngcmd*, %struct.ngcmd** %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @MatchCommand(%struct.ngcmd* %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %26)
  store %struct.ngcmd* null, %struct.ngcmd** %2, align 8
  br label %46

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %6

34:                                               ; preds = %6
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  store %struct.ngcmd* null, %struct.ngcmd** %2, align 8
  br label %46

40:                                               ; preds = %34
  %41 = load %struct.ngcmd**, %struct.ngcmd*** @cmds, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ngcmd*, %struct.ngcmd** %41, i64 %43
  %45 = load %struct.ngcmd*, %struct.ngcmd** %44, align 8
  store %struct.ngcmd* %45, %struct.ngcmd** %2, align 8
  br label %46

46:                                               ; preds = %40, %37, %25
  %47 = load %struct.ngcmd*, %struct.ngcmd** %2, align 8
  ret %struct.ngcmd* %47
}

declare dso_local i64 @MatchCommand(%struct.ngcmd*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
