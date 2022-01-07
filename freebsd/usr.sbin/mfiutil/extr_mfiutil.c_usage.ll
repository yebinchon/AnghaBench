; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfiutil.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfiutil.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"usage: mfiutil [-de] [-u unit] <command> ...\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Commands include:\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"    version\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"    show adapter              - display controller information\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"    show battery              - display battery information\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"    show config               - display RAID configuration\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"    show drives               - list physical drives\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"    show events               - display event log\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"    show firmware             - list firmware images\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"    show foreign              - display detected foreign volumes\0A\00", align 1
@.str.10 = private unnamed_addr constant [68 x i8] c"    show logstate             - display event log sequence numbers\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"    show volumes              - list logical volumes\0A\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"    show patrol               - display patrol read status\0A\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"    show progress             - display status of active operations\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"    fail <drive>              - fail a physical drive\0A\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"    good <drive>              - set a failed/SYSPD drive as UNCONFIGURED\0A\00", align 1
@.str.16 = private unnamed_addr constant [69 x i8] c"    rebuild <drive>           - mark failed drive ready for rebuild\0A\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"    syspd <drive>             - set drive into use as SYSPD JBOD\0A\00", align 1
@.str.18 = private unnamed_addr constant [69 x i8] c"    drive progress <drive>    - display status of active operations\0A\00", align 1
@.str.19 = private unnamed_addr constant [68 x i8] c"    drive clear <drive> <start|stop> - clear a drive with all 0x00\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"    start rebuild <drive>\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"    abort rebuild <drive>\0A\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"    locate <drive> <on|off>   - toggle drive LED\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"    cache <volume> [command [setting]]\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"    name <volume> <name>\0A\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"    volume progress <volume>  - display status of active operations\0A\00", align 1
@.str.26 = private unnamed_addr constant [60 x i8] c"    clear                     - clear volume configuration\0A\00", align 1
@.str.27 = private unnamed_addr constant [90 x i8] c"    create <type> [-v] [-s stripe_size] <drive>[,<drive>[,...]] [<drive>[,<drive>[,...]]\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"    delete <volume>\0A\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"    add <drive> [volume]      - add a hot spare\0A\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"    remove <drive>            - remove a hot spare\0A\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"    patrol <disable|auto|manual> [interval [start]]\0A\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"    start patrol              - start a patrol read\0A\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"    stop patrol               - stop a patrol read\0A\00", align 1
@.str.34 = private unnamed_addr constant [65 x i8] c"    foreign scan              - scan for foreign configurations\0A\00", align 1
@.str.35 = private unnamed_addr constant [76 x i8] c"    foreign clear [volume]    - clear foreign configurations (default all)\0A\00", align 1
@.str.36 = private unnamed_addr constant [89 x i8] c"    foreign diag [volume]     - diagnostic display foreign configurations (default all)\0A\00", align 1
@.str.37 = private unnamed_addr constant [78 x i8] c"    foreign preview [volume]  - preview foreign configurations (default all)\0A\00", align 1
@.str.38 = private unnamed_addr constant [77 x i8] c"    foreign import [volume]   - import foreign configurations (default all)\0A\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"    flash <firmware>\0A\00", align 1
@.str.40 = private unnamed_addr constant [53 x i8] c"    start learn               - start a BBU relearn\0A\00", align 1
@.str.41 = private unnamed_addr constant [52 x i8] c"    bbu <setting> <value>     - set BBU properties\0A\00", align 1
@.str.42 = private unnamed_addr constant [65 x i8] c"    ctrlprop rebuild [rate]   - get/set the volume rebuild rate\0A\00", align 1
@.str.43 = private unnamed_addr constant [66 x i8] c"    ctrlprop alarm [0/1]      - enable/disable controller alarms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0))
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.10, i64 0, i64 0))
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0))
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0))
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.13, i64 0, i64 0))
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0))
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i64 0, i64 0))
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.16, i64 0, i64 0))
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.17, i64 0, i64 0))
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.18, i64 0, i64 0))
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.19, i64 0, i64 0))
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i64 0, i64 0))
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0))
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.25, i64 0, i64 0))
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.26, i64 0, i64 0))
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.27, i64 0, i64 0))
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i64 0, i64 0))
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i64 0, i64 0))
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.31, i64 0, i64 0))
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 @fprintf(i32 %65, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.32, i64 0, i64 0))
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i64 0, i64 0))
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.34, i64 0, i64 0))
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.35, i64 0, i64 0))
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.36, i64 0, i64 0))
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.37, i64 0, i64 0))
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.38, i64 0, i64 0))
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i64 0, i64 0))
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.40, i64 0, i64 0))
  %83 = load i32, i32* @stderr, align 4
  %84 = call i32 @fprintf(i32 %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.41, i64 0, i64 0))
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 @fprintf(i32 %85, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.42, i64 0, i64 0))
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.43, i64 0, i64 0))
  %89 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*) #1

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
