; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_portacl/extr_mac_portacl.c_parse_rule_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_portacl/extr_mac_portacl.c_parse_rule_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rule = type { i8*, i32, i32, i8* }

@M_PORTACL = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UID_STRING = common dso_local global i32 0, align 4
@RULE_UID = common dso_local global i32 0, align 4
@GID_STRING = common dso_local global i32 0, align 4
@RULE_GID = common dso_local global i32 0, align 4
@TCP_STRING = common dso_local global i32 0, align 4
@RULE_PROTO_TCP = common dso_local global i32 0, align 4
@UDP_STRING = common dso_local global i32 0, align 4
@RULE_PROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rule**)* @parse_rule_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_rule_element(i8* %0, %struct.rule** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rule**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rule*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.rule** %1, %struct.rule*** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @M_PORTACL, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.rule* @malloc(i32 24, i32 %12, i32 %15)
  store %struct.rule* %16, %struct.rule** %10, align 8
  %17 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %11, align 4
  br label %105

22:                                               ; preds = %2
  %23 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %11, align 4
  br label %105

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @strtol(i8* %29, i8** %9, i32 10)
  %31 = load %struct.rule*, %struct.rule** %10, align 8
  %32 = getelementptr inbounds %struct.rule, %struct.rule* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %11, align 4
  br label %105

39:                                               ; preds = %28
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @UID_STRING, align 4
  %42 = call i64 @strcmp(i8* %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @RULE_UID, align 4
  %46 = load %struct.rule*, %struct.rule** %10, align 8
  %47 = getelementptr inbounds %struct.rule, %struct.rule* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %60

48:                                               ; preds = %39
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @GID_STRING, align 4
  %51 = call i64 @strcmp(i8* %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @RULE_GID, align 4
  %55 = load %struct.rule*, %struct.rule** %10, align 8
  %56 = getelementptr inbounds %struct.rule, %struct.rule* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  br label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %11, align 4
  br label %105

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %44
  %61 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %11, align 4
  br label %105

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* @TCP_STRING, align 4
  %69 = call i64 @strcmp(i8* %67, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @RULE_PROTO_TCP, align 4
  %73 = load %struct.rule*, %struct.rule** %10, align 8
  %74 = getelementptr inbounds %struct.rule, %struct.rule* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %87

75:                                               ; preds = %66
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* @UDP_STRING, align 4
  %78 = call i64 @strcmp(i8* %76, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @RULE_PROTO_UDP, align 4
  %82 = load %struct.rule*, %struct.rule** %10, align 8
  %83 = getelementptr inbounds %struct.rule, %struct.rule* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  br label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %11, align 4
  br label %105

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %71
  %88 = load i8*, i8** %3, align 8
  store i8* %88, i8** %8, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %11, align 4
  br label %105

93:                                               ; preds = %87
  %94 = load i8*, i8** %8, align 8
  %95 = call i8* @strtol(i8* %94, i8** %9, i32 10)
  %96 = load %struct.rule*, %struct.rule** %10, align 8
  %97 = getelementptr inbounds %struct.rule, %struct.rule* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = load i32, i32* @EINVAL, align 4
  store i32 %103, i32* %11, align 4
  br label %105

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %102, %91, %84, %64, %57, %37, %26, %20
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.rule*, %struct.rule** %10, align 8
  %110 = load i32, i32* @M_PORTACL, align 4
  %111 = call i32 @free(%struct.rule* %109, i32 %110)
  %112 = load %struct.rule**, %struct.rule*** %4, align 8
  store %struct.rule* null, %struct.rule** %112, align 8
  br label %116

113:                                              ; preds = %105
  %114 = load %struct.rule*, %struct.rule** %10, align 8
  %115 = load %struct.rule**, %struct.rule*** %4, align 8
  store %struct.rule* %114, %struct.rule** %115, align 8
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i32, i32* %11, align 4
  ret i32 %117
}

declare dso_local %struct.rule* @malloc(i32, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @free(%struct.rule*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
