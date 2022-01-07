; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_main.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_main.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [102 x i8] c"usage: netstat [-46AaLnRSTWx] [-f protocol_family | -p protocol]\0A               [-M core] [-N system]\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"       netstat -i | -I interface [-46abdhnW] [-f address_family]\0A               [-M core] [-N system]\00", align 1
@.str.3 = private unnamed_addr constant [95 x i8] c"       netstat -w wait [-I interface] [-46d] [-M core] [-N system]\0A               [-q howmany]\00", align 1
@.str.4 = private unnamed_addr constant [98 x i8] c"       netstat -s [-46sz] [-f protocol_family | -p protocol]\0A               [-M core] [-N system]\00", align 1
@.str.5 = private unnamed_addr constant [115 x i8] c"       netstat -i | -I interface -s [-46s]\0A               [-f protocol_family | -p protocol] [-M core] [-N system]\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"       netstat -m [-M core] [-N system]\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"       netstat -B [-z] [-I interface]\00", align 1
@.str.8 = private unnamed_addr constant [96 x i8] c"       netstat -r [-46AnW] [-F fibnum] [-f address_family]\0A               [-M core] [-N system]\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"       netstat -rs [-s] [-M core] [-N system]\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"       netstat -g [-46W] [-f address_family] [-M core] [-N system]\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"       netstat -gs [-46s] [-f address_family] [-M core] [-N system]\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"       netstat -Q\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 @xo_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %2 = call i32 (...) @xo_finish()
  %3 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @xo_error(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @xo_finish(...) #1

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
