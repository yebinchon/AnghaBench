; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pfl_scan_ruleset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pfl_scan_ruleset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_rule = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32*, i32*, i32, i32 }
%struct.pfl_entry = type { i64, i32*, i32*, i32, i32 }

@PF_PASS = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCGETRULES = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"pfl_scan_ruleset: ioctl(DIOCGETRULES): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@DIOCGETRULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"pfl_scan_ruleset: ioctl(DIOCGETRULE): %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@IN = common dso_local global i64 0, align 8
@OUT = common dso_local global i64 0, align 8
@pfl_table_count = common dso_local global i64 0, align 8
@pfl_table = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pfl_scan_ruleset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfl_scan_ruleset(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pfioc_rule, align 8
  %5 = alloca %struct.pfl_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = call i32 @bzero(%struct.pfioc_rule* %4, i32 48)
  %9 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %4, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strlcpy(i32 %10, i8* %11, i32 4)
  %13 = load i32, i32* @PF_PASS, align 4
  %14 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %4, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @dev, align 4
  %17 = load i32, i32* @DIOCGETRULES, align 4
  %18 = call i64 @ioctl(i32 %16, i32 %17, %struct.pfioc_rule* %4)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @strerror(i32 %22)
  %24 = call i32 @syslog(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %141

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %137, %25
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %140

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %4, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* @dev, align 4
  %36 = load i32, i32* @DIOCGETRULE, align 4
  %37 = call i64 @ioctl(i32 %35, i32 %36, %struct.pfioc_rule* %4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32, i32* @LOG_ERR, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 @syslog(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %141

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %4, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %136

51:                                               ; preds = %44
  %52 = call i64 @malloc(i32 32)
  %53 = inttoptr i64 %52 to %struct.pfl_entry*
  store %struct.pfl_entry* %53, %struct.pfl_entry** %5, align 8
  %54 = load %struct.pfl_entry*, %struct.pfl_entry** %5, align 8
  %55 = icmp eq %struct.pfl_entry* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %141

57:                                               ; preds = %51
  %58 = load %struct.pfl_entry*, %struct.pfl_entry** %5, align 8
  %59 = getelementptr inbounds %struct.pfl_entry, %struct.pfl_entry* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @strlcpy(i32 %60, i8* %61, i32 4)
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.pfl_entry*, %struct.pfl_entry** %5, align 8
  %69 = getelementptr inbounds %struct.pfl_entry, %struct.pfl_entry* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @strlcat(i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %72

72:                                               ; preds = %67, %57
  %73 = load %struct.pfl_entry*, %struct.pfl_entry** %5, align 8
  %74 = getelementptr inbounds %struct.pfl_entry, %struct.pfl_entry* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %4, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strlcat(i32 %75, i8* %78, i32 4)
  %80 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %4, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.pfl_entry*, %struct.pfl_entry** %5, align 8
  %84 = getelementptr inbounds %struct.pfl_entry, %struct.pfl_entry* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %4, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @IN, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pfl_entry*, %struct.pfl_entry** %5, align 8
  %92 = getelementptr inbounds %struct.pfl_entry, %struct.pfl_entry* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @IN, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %90, i32* %95, align 4
  %96 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %4, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @OUT, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.pfl_entry*, %struct.pfl_entry** %5, align 8
  %103 = getelementptr inbounds %struct.pfl_entry, %struct.pfl_entry* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @OUT, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 %101, i32* %106, align 4
  %107 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %4, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @IN, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.pfl_entry*, %struct.pfl_entry** %5, align 8
  %114 = getelementptr inbounds %struct.pfl_entry, %struct.pfl_entry* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @IN, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %112, i32* %117, align 4
  %118 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %4, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @OUT, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.pfl_entry*, %struct.pfl_entry** %5, align 8
  %125 = getelementptr inbounds %struct.pfl_entry, %struct.pfl_entry* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @OUT, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32 %123, i32* %128, align 4
  %129 = load i64, i64* @pfl_table_count, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* @pfl_table_count, align 8
  %131 = load %struct.pfl_entry*, %struct.pfl_entry** %5, align 8
  %132 = getelementptr inbounds %struct.pfl_entry, %struct.pfl_entry* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.pfl_entry*, %struct.pfl_entry** %5, align 8
  %134 = load i32, i32* @link, align 4
  %135 = call i32 @TAILQ_INSERT_TAIL(i32* @pfl_table, %struct.pfl_entry* %133, i32 %134)
  br label %136

136:                                              ; preds = %72, %44
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %7, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %7, align 8
  br label %28

140:                                              ; preds = %28
  store i32 0, i32* %2, align 4
  br label %142

141:                                              ; preds = %56, %39, %20
  store i32 -1, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %140
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @bzero(%struct.pfioc_rule*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_rule*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pfl_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
