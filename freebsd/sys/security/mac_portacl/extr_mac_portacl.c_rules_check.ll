; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_portacl/extr_mac_portacl.c_rules_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_portacl/extr_mac_portacl.c_rules_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32, i64 }
%struct.rule = type { i64, i32, i64, i64 }

@portacl_port_high = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@rule_mtx = common dso_local global i32 0, align 4
@rule_head = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@RULE_PROTO_UDP = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@RULE_PROTO_TCP = common dso_local global i64 0, align 8
@RULE_UID = common dso_local global i64 0, align 8
@RULE_GID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"rules_check: unknown rule type %d\00", align 1
@r_entries = common dso_local global i32 0, align 4
@portacl_suser_exempt = common dso_local global i64 0, align 8
@PRIV_NETINET_RESERVEDPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, i32, i32, i32)* @rules_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rules_check(%struct.ucred* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rule*, align 8
  %11 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @portacl_port_high, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %118

16:                                               ; preds = %4
  %17 = load i32, i32* @EPERM, align 4
  store i32 %17, i32* %11, align 4
  %18 = call i32 @mtx_lock(i32* @rule_mtx)
  %19 = call %struct.rule* @TAILQ_FIRST(i32* @rule_head)
  store %struct.rule* %19, %struct.rule** %10, align 8
  br label %20

20:                                               ; preds = %101, %16
  %21 = load %struct.rule*, %struct.rule** %10, align 8
  %22 = icmp ne %struct.rule* %21, null
  br i1 %22, label %23, label %105

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @SOCK_DGRAM, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.rule*, %struct.rule** %10, align 8
  %29 = getelementptr inbounds %struct.rule, %struct.rule* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RULE_PROTO_UDP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %101

34:                                               ; preds = %27, %23
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SOCK_STREAM, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.rule*, %struct.rule** %10, align 8
  %40 = getelementptr inbounds %struct.rule, %struct.rule* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RULE_PROTO_TCP, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %101

45:                                               ; preds = %38, %34
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.rule*, %struct.rule** %10, align 8
  %48 = getelementptr inbounds %struct.rule, %struct.rule* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %101

52:                                               ; preds = %45
  %53 = load %struct.rule*, %struct.rule** %10, align 8
  %54 = getelementptr inbounds %struct.rule, %struct.rule* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RULE_UID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.ucred*, %struct.ucred** %6, align 8
  %60 = getelementptr inbounds %struct.ucred, %struct.ucred* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load %struct.rule*, %struct.rule** %10, align 8
  %64 = getelementptr inbounds %struct.rule, %struct.rule* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  br label %105

68:                                               ; preds = %58
  br label %100

69:                                               ; preds = %52
  %70 = load %struct.rule*, %struct.rule** %10, align 8
  %71 = getelementptr inbounds %struct.rule, %struct.rule* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @RULE_GID, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = load %struct.ucred*, %struct.ucred** %6, align 8
  %77 = getelementptr inbounds %struct.ucred, %struct.ucred* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.rule*, %struct.rule** %10, align 8
  %80 = getelementptr inbounds %struct.rule, %struct.rule* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 0, i32* %11, align 4
  br label %105

84:                                               ; preds = %75
  %85 = load %struct.rule*, %struct.rule** %10, align 8
  %86 = getelementptr inbounds %struct.rule, %struct.rule* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ucred*, %struct.ucred** %6, align 8
  %89 = call i64 @groupmember(i64 %87, %struct.ucred* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  br label %105

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92
  br label %99

94:                                               ; preds = %69
  %95 = load %struct.rule*, %struct.rule** %10, align 8
  %96 = getelementptr inbounds %struct.rule, %struct.rule* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %97)
  br label %99

99:                                               ; preds = %94, %93
  br label %100

100:                                              ; preds = %99, %68
  br label %101

101:                                              ; preds = %100, %51, %44, %33
  %102 = load %struct.rule*, %struct.rule** %10, align 8
  %103 = load i32, i32* @r_entries, align 4
  %104 = call %struct.rule* @TAILQ_NEXT(%struct.rule* %102, i32 %103)
  store %struct.rule* %104, %struct.rule** %10, align 8
  br label %20

105:                                              ; preds = %91, %83, %67, %20
  %106 = call i32 @mtx_unlock(i32* @rule_mtx)
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load i64, i64* @portacl_suser_exempt, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load %struct.ucred*, %struct.ucred** %6, align 8
  %114 = load i32, i32* @PRIV_NETINET_RESERVEDPORT, align 4
  %115 = call i32 @priv_check_cred(%struct.ucred* %113, i32 %114)
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %112, %109, %105
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %15
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.rule* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @groupmember(i64, %struct.ucred*) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local %struct.rule* @TAILQ_NEXT(%struct.rule*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
