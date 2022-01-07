; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pfa_table_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pfa_table_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfioc_table = type { i32, i32, %struct.TYPE_4__, %struct.pfioc_table*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.pfr_astats = type { i32, i32, %struct.TYPE_4__, %struct.pfr_astats*, %struct.TYPE_3__ }
%struct.pfa_entry = type { i32, i64 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"pfa_table_addrs(): reallocf(): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCRGETASTATS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"pfa_table_addrs(): ioctl() on %s: %s\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"pfa_table_addrs(): malloc(): %s\00", align 1
@pfa_table = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.pfr_table*)* @pfa_table_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfa_table_addrs(i64 %0, %struct.pfr_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.pfr_table*, align 8
  %6 = alloca %struct.pfioc_table, align 8
  %7 = alloca %struct.pfr_astats*, align 8
  %8 = alloca %struct.pfa_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.pfr_table* %1, %struct.pfr_table** %5, align 8
  store %struct.pfr_astats* null, %struct.pfr_astats** %7, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %12 = icmp eq %struct.pfr_table* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %131

14:                                               ; preds = %2
  %15 = bitcast %struct.pfioc_table* %6 to %struct.pfr_astats*
  %16 = call i32 @memset(%struct.pfr_astats* %15, i32 0, i32 32)
  %17 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %6, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %21 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strlcpy(i32 %19, i32 %22, i32 4)
  br label %24

24:                                               ; preds = %66, %14
  %25 = load %struct.pfr_astats*, %struct.pfr_astats** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = call %struct.pfr_astats* @reallocf(%struct.pfr_astats* %25, i32 %29)
  store %struct.pfr_astats* %30, %struct.pfr_astats** %7, align 8
  %31 = load %struct.pfr_astats*, %struct.pfr_astats** %7, align 8
  %32 = icmp eq %struct.pfr_astats* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32, i32* @LOG_ERR, align 4
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 (i32, i8*, i32, ...) @syslog(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 -1, i32* %10, align 4
  br label %129

38:                                               ; preds = %24
  %39 = load %struct.pfr_astats*, %struct.pfr_astats** %7, align 8
  %40 = call i32 @memset(%struct.pfr_astats* %39, i32 0, i32 32)
  %41 = load i32, i32* %10, align 4
  %42 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %6, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load %struct.pfr_astats*, %struct.pfr_astats** %7, align 8
  %44 = bitcast %struct.pfr_astats* %43 to %struct.pfioc_table*
  %45 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %6, i32 0, i32 3
  store %struct.pfioc_table* %44, %struct.pfioc_table** %45, align 8
  %46 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %6, i32 0, i32 1
  store i32 32, i32* %46, align 4
  %47 = load i32, i32* @dev, align 4
  %48 = load i32, i32* @DIOCRGETASTATS, align 4
  %49 = bitcast %struct.pfioc_table* %6 to %struct.pfr_astats*
  %50 = call i64 @ioctl(i32 %47, i32 %48, %struct.pfr_astats* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %38
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %55 = getelementptr inbounds %struct.pfr_table, %struct.pfr_table* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 (i32, i8*, i32, ...) @syslog(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %58)
  store i32 -1, i32* %10, align 4
  br label %69

60:                                               ; preds = %38
  %61 = load i32, i32* %10, align 4
  %62 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %69

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %10, align 4
  br label %24

69:                                               ; preds = %65, %52
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %123, %69
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %126

74:                                               ; preds = %70
  %75 = load %struct.pfr_astats*, %struct.pfr_astats** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %75, i64 %77
  %79 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AF_INET, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %74
  %85 = load %struct.pfr_astats*, %struct.pfr_astats** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %85, i64 %87
  %89 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AF_INET6, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %10, align 4
  br label %126

96:                                               ; preds = %84, %74
  %97 = call i64 @malloc(i32 16)
  %98 = inttoptr i64 %97 to %struct.pfa_entry*
  store %struct.pfa_entry* %98, %struct.pfa_entry** %8, align 8
  %99 = load %struct.pfa_entry*, %struct.pfa_entry** %8, align 8
  %100 = icmp eq %struct.pfa_entry* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i32, i32* @LOG_ERR, align 4
  %103 = load i32, i32* @errno, align 4
  %104 = call i32 @strerror(i32 %103)
  %105 = call i32 (i32, i8*, i32, ...) @syslog(i32 %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  store i32 -1, i32* %10, align 4
  br label %126

106:                                              ; preds = %96
  %107 = load i64, i64* %4, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load %struct.pfa_entry*, %struct.pfa_entry** %8, align 8
  %112 = getelementptr inbounds %struct.pfa_entry, %struct.pfa_entry* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.pfa_entry*, %struct.pfa_entry** %8, align 8
  %114 = getelementptr inbounds %struct.pfa_entry, %struct.pfa_entry* %113, i32 0, i32 0
  %115 = load %struct.pfr_astats*, %struct.pfr_astats** %7, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %115, i64 %117
  %119 = call i32 @memcpy(i32* %114, %struct.pfr_astats* %118, i32 32)
  %120 = load %struct.pfa_entry*, %struct.pfa_entry** %8, align 8
  %121 = load i32, i32* @link, align 4
  %122 = call i32 @TAILQ_INSERT_TAIL(i32* @pfa_table, %struct.pfa_entry* %120, i32 %121)
  br label %123

123:                                              ; preds = %106
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %70

126:                                              ; preds = %101, %94, %70
  %127 = load %struct.pfr_astats*, %struct.pfr_astats** %7, align 8
  %128 = call i32 @free(%struct.pfr_astats* %127)
  br label %129

129:                                              ; preds = %126, %33
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %13
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @memset(%struct.pfr_astats*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local %struct.pfr_astats* @reallocf(%struct.pfr_astats*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfr_astats*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.pfr_astats*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pfa_entry*, i32) #1

declare dso_local i32 @free(%struct.pfr_astats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
