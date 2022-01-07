; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_parse_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_parse_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid output option - %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@OUTPUT_SHORT = common dso_local global i32 0, align 4
@OUTPUT_VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"tabular\00", align 1
@OUTPUT_TABULAR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@OUTPUT_QUIET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_output(%struct.snmp_toolinfo* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_toolinfo*, align 8
  %5 = alloca i8*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  store i32 -1, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = call i64 @strncasecmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %25 = load i32, i32* @OUTPUT_SHORT, align 4
  %26 = call i32 @SET_OUTPUT(%struct.snmp_toolinfo* %24, i32 %25)
  br label %63

27:                                               ; preds = %17
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = call i64 @strncasecmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %35 = load i32, i32* @OUTPUT_VERBOSE, align 4
  %36 = call i32 @SET_OUTPUT(%struct.snmp_toolinfo* %34, i32 %35)
  br label %62

37:                                               ; preds = %27
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = call i64 @strncasecmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %45 = load i32, i32* @OUTPUT_TABULAR, align 4
  %46 = call i32 @SET_OUTPUT(%struct.snmp_toolinfo* %44, i32 %45)
  br label %61

47:                                               ; preds = %37
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = call i64 @strncasecmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %55 = load i32, i32* @OUTPUT_QUIET, align 4
  %56 = call i32 @SET_OUTPUT(%struct.snmp_toolinfo* %54, i32 %55)
  br label %60

57:                                               ; preds = %47
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  store i32 -1, i32* %3, align 4
  br label %64

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %43
  br label %62

62:                                               ; preds = %61, %33
  br label %63

63:                                               ; preds = %62, %23
  store i32 2, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %57, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i32 @SET_OUTPUT(%struct.snmp_toolinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
