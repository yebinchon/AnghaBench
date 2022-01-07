; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/environ/extr_envctl.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/environ/extr_envctl.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [780 x i8] c"Usage:  %s [-DGUchrt] [-c 1|2|3|4] [-bgu name] [-p name=value]\0A\09[(-S|-s name) value overwrite]\0A\0AOptions:\0A  -D\09\09\09\09Dump environ\0A  -G name\09\09\09getenv(NULL)\0A  -S value overwrite\09\09setenv(NULL, value, overwrite)\0A  -U\09\09\09\09unsetenv(NULL)\0A  -b name\09\09\09blank the 'name=$name' entry, corrupting it\0A  -c 1|2|3|4\09\09\09Clear environ variable using method:\0A\09\09\09\091 - set environ to NULL pointer\0A\09\09\09\092 - set environ[0] to NULL pointer\0A\09\09\09\093 - set environ to calloc()'d NULL-terminated array\0A\09\09\09\094 - set environ to static NULL-terminated array\0A  -g name\09\09\09getenv(name)\0A  -h\09\09\09\09Help\0A  -p name=value\09\09\09putenv(name=value)\0A  -r\09\09\09\09replace environ with { \22FOO=bar\22, NULL }\0A  -s name value overwrite\09setenv(name, value, overwrite)\0A  -t\09\09\09\09Output is suitable for testing (no newlines)\0A  -u name\09\09\09unsetenv(name)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @basename(i8* %4)
  %6 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([780 x i8], [780 x i8]* @.str, i64 0, i64 0), i8* %5)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @basename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
