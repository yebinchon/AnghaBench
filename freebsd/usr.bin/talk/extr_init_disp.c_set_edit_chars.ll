; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_init_disp.c_set_edit_chars.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_init_disp.c_set_edit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8, i8 }
%struct.TYPE_4__ = type { i8, i8, i8 }
%struct.termios = type { i8* }

@VERASE = common dso_local global i64 0, align 8
@my_win = common dso_local global %struct.TYPE_3__ zeroinitializer, align 1
@VKILL = common dso_local global i64 0, align 8
@VWERASE = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i64 0, align 8
@CERASE = common dso_local global i8 0, align 1
@CKILL = common dso_local global i8 0, align 1
@CWERASE = common dso_local global i8 0, align 1
@sockt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Lost the connection\00", align 1
@his_win = common dso_local global %struct.TYPE_4__ zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_edit_chars() #0 {
  %1 = alloca [3 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca %struct.termios, align 8
  %4 = call i32 @tcgetattr(i32 0, %struct.termios* %3)
  %5 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load i64, i64* @VERASE, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 0), align 1
  %10 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i64, i64* @VKILL, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 1), align 1
  %15 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i64, i64* @VWERASE, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 2), align 1
  %20 = load i8, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 0), align 1
  %21 = sext i8 %20 to i32
  %22 = load i64, i64* @_POSIX_VDISABLE, align 8
  %23 = trunc i64 %22 to i8
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %0
  %27 = load i8, i8* @CERASE, align 1
  store i8 %27, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 1), align 1
  br label %28

28:                                               ; preds = %26, %0
  %29 = load i8, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 1), align 1
  %30 = sext i8 %29 to i32
  %31 = load i64, i64* @_POSIX_VDISABLE, align 8
  %32 = trunc i64 %31 to i8
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i8, i8* @CKILL, align 1
  store i8 %36, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 1), align 1
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i8, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 2), align 1
  %39 = sext i8 %38 to i32
  %40 = load i64, i64* @_POSIX_VDISABLE, align 8
  %41 = trunc i64 %40 to i8
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i8, i8* @CWERASE, align 1
  store i8 %45, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 2), align 1
  br label %46

46:                                               ; preds = %44, %37
  %47 = load i8, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 0), align 1
  %48 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  store i8 %47, i8* %48, align 1
  %49 = load i8, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 1), align 1
  %50 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 1
  store i8 %49, i8* %50, align 1
  %51 = load i8, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 2), align 1
  %52 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 2
  store i8 %51, i8* %52, align 1
  %53 = load i32, i32* @sockt, align 4
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %55 = call i32 @write(i32 %53, i8* %54, i32 3)
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 3
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = call i32 @p_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %46
  %62 = load i32, i32* @sockt, align 4
  %63 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %64 = call i32 @read(i32 %62, i8* %63, i32 3)
  store i32 %64, i32* %2, align 4
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ne i64 %66, 3
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = call i32 @p_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %61
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 0
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 0), align 1
  %73 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 1
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 1), align 1
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %1, i64 0, i64 2
  %76 = load i8, i8* %75, align 1
  store i8 %76, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 2), align 1
  ret void
}

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @p_error(i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
