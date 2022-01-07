; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmptool_parse_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmptool_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }

@program = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dhnKA:b:C:I:i:l:M:N:o:P:p:r:s:t:U:v:\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"aDdehnKA:b:C:I:i:l:M:N:o:P:p:r:s:t:U:v:\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"adehnKA:b:C:I:i:l:o:P:r:s:t:U:v:\00", align 1
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*, i32, i8**)* @snmptool_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmptool_parse_options(%struct.snmp_toolinfo* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @program, align 4
  switch i32 %12, label %16 [
    i32 128, label %13
    i32 130, label %14
    i32 129, label %15
  ]

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %17

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %17

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %117

17:                                               ; preds = %15, %14, %13
  br label %18

18:                                               ; preds = %111, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @getopt(i32 %19, i8** %20, i8* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @EOF, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %115

25:                                               ; preds = %18
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %105 [
    i32 65, label %27
    i32 97, label %31
    i32 98, label %34
    i32 68, label %37
    i32 100, label %40
    i32 101, label %42
    i32 104, label %45
    i32 67, label %47
    i32 73, label %51
    i32 105, label %55
    i32 75, label %59
    i32 108, label %62
    i32 77, label %65
    i32 78, label %69
    i32 110, label %73
    i32 111, label %76
    i32 80, label %80
    i32 112, label %84
    i32 114, label %88
    i32 115, label %91
    i32 116, label %94
    i32 85, label %97
    i32 118, label %101
    i32 63, label %104
  ]

27:                                               ; preds = %25
  %28 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %29 = load i32, i32* @optarg, align 4
  %30 = call i32 @parse_authentication(%struct.snmp_toolinfo* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  br label %107

31:                                               ; preds = %25
  %32 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %33 = call i32 @parse_skip_access(%struct.snmp_toolinfo* %32)
  store i32 %33, i32* %8, align 4
  br label %107

34:                                               ; preds = %25
  %35 = load i32, i32* @optarg, align 4
  %36 = call i32 @parse_buflen(i32 %35)
  store i32 %36, i32* %8, align 4
  br label %107

37:                                               ; preds = %25
  %38 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %39 = call i32 @parse_discovery(%struct.snmp_toolinfo* %38)
  store i32 %39, i32* %8, align 4
  br label %107

40:                                               ; preds = %25
  %41 = call i32 (...) @parse_debug()
  store i32 %41, i32* %8, align 4
  br label %107

42:                                               ; preds = %25
  %43 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %44 = call i32 @parse_errors(%struct.snmp_toolinfo* %43)
  store i32 %44, i32* %8, align 4
  br label %107

45:                                               ; preds = %25
  %46 = call i32 (...) @usage()
  store i32 -2, i32* %4, align 4
  br label %117

47:                                               ; preds = %25
  %48 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %49 = load i32, i32* @optarg, align 4
  %50 = call i32 @parse_context(%struct.snmp_toolinfo* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %107

51:                                               ; preds = %25
  %52 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %53 = load i32, i32* @optarg, align 4
  %54 = call i32 @parse_include(%struct.snmp_toolinfo* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %107

55:                                               ; preds = %25
  %56 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %57 = load i32, i32* @optarg, align 4
  %58 = call i32 @parse_file(%struct.snmp_toolinfo* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  br label %107

59:                                               ; preds = %25
  %60 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %61 = call i32 @parse_local_key(%struct.snmp_toolinfo* %60)
  store i32 %61, i32* %8, align 4
  br label %107

62:                                               ; preds = %25
  %63 = load i32, i32* @optarg, align 4
  %64 = call i32 @parse_local_path(i32 %63)
  store i32 %64, i32* %8, align 4
  br label %107

65:                                               ; preds = %25
  %66 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %67 = load i32, i32* @optarg, align 4
  %68 = call i32 @parse_max_repetitions(%struct.snmp_toolinfo* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %107

69:                                               ; preds = %25
  %70 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %71 = load i32, i32* @optarg, align 4
  %72 = call i32 @parse_non_repeaters(%struct.snmp_toolinfo* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  br label %107

73:                                               ; preds = %25
  %74 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %75 = call i32 @parse_num_oids(%struct.snmp_toolinfo* %74)
  store i32 %75, i32* %8, align 4
  br label %107

76:                                               ; preds = %25
  %77 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %78 = load i32, i32* @optarg, align 4
  %79 = call i32 @parse_output(%struct.snmp_toolinfo* %77, i32 %78)
  store i32 %79, i32* %8, align 4
  br label %107

80:                                               ; preds = %25
  %81 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %82 = load i32, i32* @optarg, align 4
  %83 = call i32 @parse_privacy(%struct.snmp_toolinfo* %81, i32 %82)
  store i32 %83, i32* %8, align 4
  br label %107

84:                                               ; preds = %25
  %85 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %86 = load i32, i32* @optarg, align 4
  %87 = call i32 @parse_pdu_type(%struct.snmp_toolinfo* %85, i32 %86)
  store i32 %87, i32* %8, align 4
  br label %107

88:                                               ; preds = %25
  %89 = load i32, i32* @optarg, align 4
  %90 = call i32 @parse_retry(i32 %89)
  store i32 %90, i32* %8, align 4
  br label %107

91:                                               ; preds = %25
  %92 = load i32, i32* @optarg, align 4
  %93 = call i32 @parse_server(i32 %92)
  store i32 %93, i32* %8, align 4
  br label %107

94:                                               ; preds = %25
  %95 = load i32, i32* @optarg, align 4
  %96 = call i32 @parse_timeout(i32 %95)
  store i32 %96, i32* %8, align 4
  br label %107

97:                                               ; preds = %25
  %98 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %99 = load i32, i32* @optarg, align 4
  %100 = call i32 @parse_user_security(%struct.snmp_toolinfo* %98, i32 %99)
  store i32 %100, i32* %8, align 4
  br label %107

101:                                              ; preds = %25
  %102 = load i32, i32* @optarg, align 4
  %103 = call i32 @parse_version(i32 %102)
  store i32 %103, i32* %8, align 4
  br label %107

104:                                              ; preds = %25
  br label %105

105:                                              ; preds = %25, %104
  %106 = call i32 (...) @usage()
  store i32 -1, i32* %4, align 4
  br label %117

107:                                              ; preds = %101, %97, %94, %91, %88, %84, %80, %76, %73, %69, %65, %62, %59, %55, %51, %47, %42, %40, %37, %34, %31, %27
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 -1, i32* %4, align 4
  br label %117

111:                                              ; preds = %107
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %18

115:                                              ; preds = %18
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %110, %105, %45, %16
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @parse_authentication(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @parse_skip_access(%struct.snmp_toolinfo*) #1

declare dso_local i32 @parse_buflen(i32) #1

declare dso_local i32 @parse_discovery(%struct.snmp_toolinfo*) #1

declare dso_local i32 @parse_debug(...) #1

declare dso_local i32 @parse_errors(%struct.snmp_toolinfo*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @parse_context(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @parse_include(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @parse_file(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @parse_local_key(%struct.snmp_toolinfo*) #1

declare dso_local i32 @parse_local_path(i32) #1

declare dso_local i32 @parse_max_repetitions(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @parse_non_repeaters(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @parse_num_oids(%struct.snmp_toolinfo*) #1

declare dso_local i32 @parse_output(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @parse_privacy(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @parse_pdu_type(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @parse_retry(i32) #1

declare dso_local i32 @parse_server(i32) #1

declare dso_local i32 @parse_timeout(i32) #1

declare dso_local i32 @parse_user_security(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @parse_version(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
