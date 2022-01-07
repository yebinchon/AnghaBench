; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/wincred/extr_git-credential-wincred.c_load_cred_funcs.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/wincred/extr_git-credential-wincred.c_load_cred_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"advapi32.dll\00", align 1
@LOAD_LIBRARY_SEARCH_SYSTEM32 = common dso_local global i32 0, align 4
@advapi = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to load advapi32.dll\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"CredWriteW\00", align 1
@CredWriteW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"CredEnumerateW\00", align 1
@CredEnumerateW = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"CredFree\00", align 1
@CredFree = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"CredDeleteW\00", align 1
@CredDeleteW = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to load functions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_cred_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_cred_funcs() #0 {
  %1 = load i32, i32* @LOAD_LIBRARY_SEARCH_SYSTEM32, align 4
  %2 = call i32 @LoadLibraryExA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null, i32 %1)
  store i32 %2, i32* @advapi, align 4
  %3 = load i32, i32* @advapi, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* @advapi, align 4
  %9 = call i64 @GetProcAddress(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i64 %9, i64* @CredWriteW, align 8
  %10 = load i32, i32* @advapi, align 4
  %11 = call i64 @GetProcAddress(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i64 %11, i64* @CredEnumerateW, align 8
  %12 = load i32, i32* @advapi, align 4
  %13 = call i64 @GetProcAddress(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i64 %13, i64* @CredFree, align 8
  %14 = load i32, i32* @advapi, align 4
  %15 = call i64 @GetProcAddress(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i64 %15, i64* @CredDeleteW, align 8
  %16 = load i64, i64* @CredWriteW, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %7
  %19 = load i64, i64* @CredEnumerateW, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* @CredFree, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* @CredDeleteW, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24, %21, %18, %7
  %28 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @LoadLibraryExA(i8*, i32*, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
