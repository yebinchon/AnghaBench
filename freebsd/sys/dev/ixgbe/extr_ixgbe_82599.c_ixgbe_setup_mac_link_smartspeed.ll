; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_mac_link_smartspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_mac_link_smartspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ixgbe_setup_mac_link_smartspeed\00", align 1
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_SMARTSPEED_MAX_RETRIES = common dso_local global i64 0, align 8
@IXGBE_AUTOC_KR_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_KX_SUPP_MASK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"Smartspeed has downgraded the link speed from the maximum advertised\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_setup_mac_link_smartspeed(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i8*, i8** @FALSE, align 8
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %11, align 4
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %18 = load i32, i32* @IXGBE_AUTOC, align 4
  %19 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %22 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %28, %3
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %35
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %52, %47
  %60 = load i8*, i8** @FALSE, align 8
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  store i64 0, i64* %10, align 8
  br label %64

64:                                               ; preds = %99, %59
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @IXGBE_SMARTSPEED_MAX_RETRIES, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %102

68:                                               ; preds = %64
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @ixgbe_setup_mac_link_82599(%struct.ixgbe_hw* %69, i32 %70, i32 %71)
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @IXGBE_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %156

77:                                               ; preds = %68
  store i64 0, i64* %9, align 8
  br label %78

78:                                               ; preds = %95, %77
  %79 = load i64, i64* %9, align 8
  %80 = icmp slt i64 %79, 5
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = call i32 @msec_delay(i32 100)
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %84 = load i8*, i8** @FALSE, align 8
  %85 = call i64 @ixgbe_check_link(%struct.ixgbe_hw* %83, i32* %8, i32* %11, i8* %84)
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @IXGBE_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %156

90:                                               ; preds = %81
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %156

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %9, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %9, align 8
  br label %78

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %10, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %10, align 8
  br label %64

102:                                              ; preds = %64
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @IXGBE_AUTOC_KX4_KX_SUPP_MASK, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107, %102
  br label %156

113:                                              ; preds = %107
  %114 = load i8*, i8** @TRUE, align 8
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i8* %114, i8** %117, align 8
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i64 @ixgbe_setup_mac_link_82599(%struct.ixgbe_hw* %118, i32 %119, i32 %120)
  store i64 %121, i64* %7, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* @IXGBE_SUCCESS, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %113
  br label %156

126:                                              ; preds = %113
  store i64 0, i64* %9, align 8
  br label %127

127:                                              ; preds = %144, %126
  %128 = load i64, i64* %9, align 8
  %129 = icmp slt i64 %128, 6
  br i1 %129, label %130, label %147

130:                                              ; preds = %127
  %131 = call i32 @msec_delay(i32 100)
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %133 = load i8*, i8** @FALSE, align 8
  %134 = call i64 @ixgbe_check_link(%struct.ixgbe_hw* %132, i32* %8, i32* %11, i8* %133)
  store i64 %134, i64* %7, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* @IXGBE_SUCCESS, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %156

139:                                              ; preds = %130
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %156

143:                                              ; preds = %139
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %9, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %9, align 8
  br label %127

147:                                              ; preds = %127
  %148 = load i8*, i8** @FALSE, align 8
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %150 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  store i8* %148, i8** %151, align 8
  %152 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i64 @ixgbe_setup_mac_link_82599(%struct.ixgbe_hw* %152, i32 %153, i32 %154)
  store i64 %155, i64* %7, align 8
  br label %156

156:                                              ; preds = %147, %142, %138, %125, %112, %93, %89, %76
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %159, %156
  %166 = load i64, i64* %7, align 8
  ret i64 %166
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_setup_mac_link_82599(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @ixgbe_check_link(%struct.ixgbe_hw*, i32*, i32*, i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
