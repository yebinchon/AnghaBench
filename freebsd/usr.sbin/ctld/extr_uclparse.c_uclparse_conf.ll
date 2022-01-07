; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32 }
%struct.ucl_parser = type { i32 }

@conf = common dso_local global %struct.conf* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"unable to parse configuration file %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uclparse_conf(%struct.conf* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.conf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ucl_parser*, align 8
  %7 = alloca i32, align 4
  store %struct.conf* %0, %struct.conf** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.conf*, %struct.conf** %4, align 8
  store %struct.conf* %8, %struct.conf** @conf, align 8
  %9 = call %struct.ucl_parser* @ucl_parser_new(i32 0)
  store %struct.ucl_parser* %9, %struct.ucl_parser** %6, align 8
  %10 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @ucl_parser_add_file(%struct.ucl_parser* %10, i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %17 = call i32 @ucl_parser_get_error(%struct.ucl_parser* %16)
  %18 = call i32 @log_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %17)
  store i32 1, i32* %3, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %21 = call i32 @ucl_parser_get_object(%struct.ucl_parser* %20)
  %22 = call i32 @uclparse_toplevel(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.ucl_parser* @ucl_parser_new(i32) #1

declare dso_local i32 @ucl_parser_add_file(%struct.ucl_parser*, i8*) #1

declare dso_local i32 @log_warn(i8*, i8*, i32) #1

declare dso_local i32 @ucl_parser_get_error(%struct.ucl_parser*) #1

declare dso_local i32 @uclparse_toplevel(i32) #1

declare dso_local i32 @ucl_parser_get_object(%struct.ucl_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
