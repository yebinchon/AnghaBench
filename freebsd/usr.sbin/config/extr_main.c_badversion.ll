; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_badversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_badversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"ERROR: version of config(8) does not match kernel!\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"config version = %d, \00", align 1
@CONFIGVERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"version required = %d\0A\0A\00", align 1
@versreq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Make sure that /usr/src/usr.sbin/config is in sync\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"with your /usr/src/sys and install a new config binary\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"before trying this again.\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"If running the new config fails check your config\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"file against the GENERIC or LINT config files for\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"changes in config syntax, or option/device naming\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"conventions\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @badversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @badversion() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stderr, align 4
  %4 = load i32, i32* @CONFIGVERS, align 4
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @stderr, align 4
  %7 = load i32, i32* @versreq, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %23 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
