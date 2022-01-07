; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_fetch_i2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_fetch_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifi2creq = type { i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MXGEFW_CMD_I2C_READ = common dso_local global i32 0, align 4
@MXGEFW_CMD_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MXGEFW_CMD_I2C_BYTE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ifi2creq*)* @mxge_fetch_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_fetch_i2c(i32* %0, %struct.ifi2creq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ifi2creq*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.ifi2creq* %1, %struct.ifi2creq** %5, align 8
  %11 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %12 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 160
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %17 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 162
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %111

22:                                               ; preds = %15, %2
  %23 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %24 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %26, 8
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %111

30:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %107, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %34 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %110

37:                                               ; preds = %31
  %38 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %39 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 %40, 8
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %43 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @MXGEFW_CMD_I2C_READ, align 4
  %54 = call i32 @mxge_send_cmd(i32* %52, i32 %53, %struct.TYPE_3__* %6)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @MXGEFW_CMD_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %37
  %59 = load i32, i32* @EIO, align 4
  store i32 %59, i32* %3, align 4
  br label %111

60:                                               ; preds = %37
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 255
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @MXGEFW_CMD_I2C_BYTE, align 4
  %66 = call i32 @mxge_send_cmd(i32* %64, i32 %65, %struct.TYPE_3__* %6)
  store i32 %66, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %89, %60
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @EBUSY, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 50
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi i1 [ false, %67 ], [ %73, %71 ]
  br i1 %75, label %76, label %92

76:                                               ; preds = %74
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 255
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @MXGEFW_CMD_I2C_BYTE, align 4
  %82 = call i32 @mxge_send_cmd(i32* %80, i32 %81, %struct.TYPE_3__* %6)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @EBUSY, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = call i32 @DELAY(i32 1000)
  br label %88

88:                                               ; preds = %86, %76
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %67

92:                                               ; preds = %74
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @MXGEFW_CMD_OK, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @EIO, align 4
  store i32 %97, i32* %3, align 4
  br label %111

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %102 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %100, i32* %106, align 4
  br label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %31

110:                                              ; preds = %31
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %96, %58, %28, %20
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @mxge_send_cmd(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
