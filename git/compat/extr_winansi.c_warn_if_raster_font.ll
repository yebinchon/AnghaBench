; ModuleID = '/home/carl/AnghaBench/git/compat/extr_winansi.c_warn_if_raster_font.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_winansi.c_warn_if_raster_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@kernel32 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@BOOL = common dso_local global i32 0, align 4
@HANDLE = common dso_local global i32 0, align 4
@PCONSOLE_FONT_INFOEX = common dso_local global i32 0, align 4
@non_ascii_used = common dso_local global i32 0, align 4
@console = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Console\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"FontFamily\00", align 1
@TMPF_TRUETYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [171 x i32] [i32 10, i32 87, i32 97, i32 114, i32 110, i32 105, i32 110, i32 103, i32 58, i32 32, i32 89, i32 111, i32 117, i32 114, i32 32, i32 99, i32 111, i32 110, i32 115, i32 111, i32 108, i32 101, i32 32, i32 102, i32 111, i32 110, i32 116, i32 32, i32 112, i32 114, i32 111, i32 98, i32 97, i32 98, i32 108, i32 121, i32 32, i32 100, i32 111, i32 101, i32 115, i32 110, i32 39, i32 116, i32 32, i32 115, i32 117, i32 112, i32 112, i32 111, i32 114, i32 116, i32 32, i32 85, i32 110, i32 105, i32 99, i32 111, i32 100, i32 101, i32 46, i32 32, i32 73, i32 102, i32 32, i32 121, i32 111, i32 117, i32 32, i32 101, i32 120, i32 112, i32 101, i32 114, i32 105, i32 101, i32 110, i32 99, i32 101, i32 32, i32 115, i32 116, i32 114, i32 97, i32 110, i32 103, i32 101, i32 32, i32 99, i32 104, i32 97, i32 114, i32 97, i32 99, i32 116, i32 101, i32 114, i32 115, i32 32, i32 105, i32 110, i32 32, i32 116, i32 104, i32 101, i32 32, i32 111, i32 117, i32 116, i32 112, i32 117, i32 116, i32 44, i32 32, i32 99, i32 111, i32 110, i32 115, i32 105, i32 100, i32 101, i32 114, i32 32, i32 115, i32 119, i32 105, i32 116, i32 99, i32 104, i32 105, i32 110, i32 103, i32 32, i32 116, i32 111, i32 32, i32 97, i32 32, i32 84, i32 114, i32 117, i32 101, i32 84, i32 121, i32 112, i32 101, i32 32, i32 102, i32 111, i32 110, i32 116, i32 32, i32 115, i32 117, i32 99, i32 104, i32 32, i32 97, i32 115, i32 32, i32 67, i32 111, i32 110, i32 115, i32 111, i32 108, i32 97, i32 115, i32 33, i32 10, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @warn_if_raster_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warn_if_raster_font() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @kernel32, i32 0, i32 0), align 4
  %8 = load i32, i32* @BOOL, align 4
  %9 = load i32, i32* @HANDLE, align 4
  %10 = load i32, i32* @BOOL, align 4
  %11 = load i32, i32* @PCONSOLE_FONT_INFOEX, align 4
  %12 = call i32 @DECLARE_PROC_ADDR(i32 %7, i32 %8, i64 (i32, i32, %struct.TYPE_6__*)* @GetCurrentConsoleFontEx, i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @non_ascii_used, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  br label %52

16:                                               ; preds = %0
  %17 = call i64 @INIT_PROC_ADDR(i64 (i32, i32, %struct.TYPE_6__*)* @GetCurrentConsoleFontEx)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i32 8, i32* %20, align 4
  %21 = load i32, i32* @console, align 4
  %22 = call i64 @GetCurrentConsoleFontEx(i32 %21, i32 0, %struct.TYPE_6__* %2)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %24, %19
  br label %41

28:                                               ; preds = %16
  %29 = load i64, i64* @ERROR_SUCCESS, align 8
  %30 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %31 = load i32, i32* @KEY_READ, align 4
  %32 = call i64 @RegOpenKeyExA(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0, i32 %31, i32* %3)
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  store i32 4, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = ptrtoint i32* %1 to i32
  %37 = call i32 @RegQueryValueExA(i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32 %36, i32* %4)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @RegCloseKey(i32 %38)
  br label %40

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @TMPF_TRUETYPE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  store i8* bitcast ([171 x i32]* @.str.2 to i8*), i8** %5, align 8
  %47 = load i32, i32* @console, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @wcslen(i8* %49)
  %51 = call i32 @WriteConsoleW(i32 %47, i8* %48, i32 %50, i32* %6, i32* null)
  br label %52

52:                                               ; preds = %15, %46, %41
  ret void
}

declare dso_local i32 @DECLARE_PROC_ADDR(i32, i32, i64 (i32, i32, %struct.TYPE_6__*)*, i32, i32, i32) #1

declare dso_local i64 @GetCurrentConsoleFontEx(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @INIT_PROC_ADDR(i64 (i32, i32, %struct.TYPE_6__*)*) #1

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @WriteConsoleW(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @wcslen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
