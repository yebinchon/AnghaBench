; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unifdef/extr_unifdef.c_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unifdef/extr_unifdef.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [940 x i8] c"\09-Dsym=val  define preprocessor symbol with given value\0A\09-Dsym      define preprocessor symbol with value 1\0A\09-Usym\09   preprocessor symbol is undefined\0A\09-iDsym=val \\  ignore C strings and comments\0A\09-iDsym      ) in sections controlled by these\0A\09-iUsym\09   /  preprocessor symbols\0A\09-fpath\09file containing #define and #undef directives\0A\09-b\09blank lines instead of deleting them\0A\09-B\09compress blank lines around deleted section\0A\09-c\09complement (invert) keep vs. delete\0A\09-d\09debugging mode\0A\09-e\09ignore multiline preprocessor directives\0A\09-h\09print help\0A\09-Ipath\09extra include file path (ignored)\0A\09-K\09disable && and || short-circuiting\0A\09-k\09process constant #if expressions\0A\09-Mext\09modify in place and keep backups\0A\09-m\09modify input files in place\0A\09-n\09add #line directives to output\0A\09-opath\09output file name\0A\09-S\09list #if control symbols with nesting\0A\09-s\09list #if control symbols\0A\09-t\09ignore C strings and comments\0A\09-V\09print version\0A\09-x{012}\09exit status mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help() #0 {
  %1 = load i32, i32* @stdout, align 4
  %2 = call i32 @synopsis(i32 %1)
  %3 = call i32 @printf(i8* getelementptr inbounds ([940 x i8], [940 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @synopsis(i32) #1

declare dso_local i32 @printf(i8*) #1

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
