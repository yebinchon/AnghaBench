; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_chash_parse_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_chash_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chash_cfg = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"masks=\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chash_cfg*, i8*)* @chash_parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chash_parse_opts(%struct.chash_cfg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chash_cfg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.chash_cfg* %0, %struct.chash_cfg** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.chash_cfg*, %struct.chash_cfg** %4, align 8
  %12 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.chash_cfg*, %struct.chash_cfg** %4, align 8
  %15 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 32)
  store i8* %22, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %113

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %31, %25
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 32
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  br label %26

34:                                               ; preds = %26
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @strncmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %3, align 4
  br label %113

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @strchr(i8* %41, i8 signext 32)
  store i8* %42, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  store i8 0, i8* %45, align 1
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 6
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 47
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %3, align 4
  br label %113

57:                                               ; preds = %47
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @strtol(i8* %58, i8** %7, i32 10)
  store i32 %59, i32* %9, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 44
  br i1 %63, label %64, label %84

64:                                               ; preds = %57
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  %69 = load i8, i8* %67, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 47
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %3, align 4
  br label %113

74:                                               ; preds = %64
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @strtol(i8* %75, i8** %7, i32 10)
  store i32 %76, i32* %10, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %3, align 4
  br label %113

83:                                               ; preds = %74
  br label %92

84:                                               ; preds = %57
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %3, align 4
  br label %113

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %83
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = icmp sgt i32 %96, 32
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = icmp sgt i32 %102, 128
  br i1 %103, label %104, label %106

104:                                              ; preds = %101, %98, %95, %92
  %105 = load i32, i32* @EINVAL, align 4
  store i32 %105, i32* %3, align 4
  br label %113

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.chash_cfg*, %struct.chash_cfg** %4, align 8
  %109 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.chash_cfg*, %struct.chash_cfg** %4, align 8
  %112 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %106, %104, %89, %81, %72, %55, %38, %24, %19
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
