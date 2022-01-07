; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_rss_init_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_rss_init_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, %struct.ena_com_dev* }
%struct.ena_com_dev = type { i32 }

@ENA_RX_RSS_TABLE_LOG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot init indirect table\0A\00", align 1
@ENA_RX_RSS_TABLE_SIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot fill indirect table\0A\00", align 1
@ENA_ADMIN_CRC32 = common dso_local global i32 0, align 4
@ENA_HASH_KEY_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Cannot fill hash function\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Cannot fill hash control\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_rss_init_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_rss_init_default(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 2
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  store %struct.ena_com_dev* %11, %struct.ena_com_dev** %4, align 8
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %16 = load i32, i32* @ENA_RX_RSS_TABLE_LOG_SIZE, align 4
  %17 = call i32 @ena_com_rss_init(%struct.ena_com_dev* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %102

27:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %58, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @ENA_RX_RSS_TABLE_SIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = srem i32 %33, %36
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ENA_IO_RXQ_IDX(i32 %40)
  %42 = call i32 @ena_com_indirect_table_fill_entry(%struct.ena_com_dev* %38, i32 %39, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = icmp ne i32 %46, %47
  br label %49

49:                                               ; preds = %45, %32
  %50 = phi i1 [ false, %32 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %98

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %28

61:                                               ; preds = %28
  %62 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %63 = load i32, i32* @ENA_ADMIN_CRC32, align 4
  %64 = load i32, i32* @ENA_HASH_KEY_SIZE, align 4
  %65 = call i32 @ena_com_fill_hash_function(%struct.ena_com_dev* %62, i32 %63, i32* null, i32 %64, i32 -1)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @EOPNOTSUPP, align 4
  %71 = icmp ne i32 %69, %70
  br label %72

72:                                               ; preds = %68, %61
  %73 = phi i1 [ false, %61 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %98

80:                                               ; preds = %72
  %81 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %82 = call i32 @ena_com_set_default_hash_ctrl(%struct.ena_com_dev* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = icmp ne i32 %86, %87
  br label %89

89:                                               ; preds = %85, %80
  %90 = phi i1 [ false, %80 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @device_printf(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %98

97:                                               ; preds = %89
  store i32 0, i32* %2, align 4
  br label %102

98:                                               ; preds = %94, %77, %54
  %99 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %100 = call i32 @ena_com_rss_destroy(%struct.ena_com_dev* %99)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %97, %23
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @ena_com_rss_init(%struct.ena_com_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ena_com_indirect_table_fill_entry(%struct.ena_com_dev*, i32, i32) #1

declare dso_local i32 @ENA_IO_RXQ_IDX(i32) #1

declare dso_local i32 @ena_com_fill_hash_function(%struct.ena_com_dev*, i32, i32*, i32, i32) #1

declare dso_local i32 @ena_com_set_default_hash_ctrl(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_rss_destroy(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
