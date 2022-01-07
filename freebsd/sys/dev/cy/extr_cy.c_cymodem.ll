; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cymodem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cymodem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { %struct.com_s* }
%struct.com_s = type { i32, i32, i32 }

@SER_DTR = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@CD1400_MSVR2 = common dso_local global i32 0, align 4
@CD1400_MSVR2_CTS = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i32 0, align 4
@CD1400_MSVR2_CD = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@CD1400_MSVR2_DSR = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@CD1400_MSVR2_RI = common dso_local global i32 0, align 4
@SER_RI = common dso_local global i32 0, align 4
@CD1400_MSVR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i32, i32)* @cymodem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cymodem(%struct.tty* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.com_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.tty*, %struct.tty** %5, align 8
  %12 = getelementptr inbounds %struct.tty, %struct.tty* %11, i32 0, i32 0
  %13 = load %struct.com_s*, %struct.com_s** %12, align 8
  store %struct.com_s* %13, %struct.com_s** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %85

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %85

19:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  %20 = load %struct.com_s*, %struct.com_s** %8, align 8
  %21 = getelementptr inbounds %struct.com_s, %struct.com_s* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.com_s*, %struct.com_s** %8, align 8
  %25 = getelementptr inbounds %struct.com_s, %struct.com_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i32, i32* @SER_DTR, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %19
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.com_s*, %struct.com_s** %8, align 8
  %36 = getelementptr inbounds %struct.com_s, %struct.com_s* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @SER_RTS, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load %struct.com_s*, %struct.com_s** %8, align 8
  %46 = load i32, i32* @CD1400_MSVR2, align 4
  %47 = call i32 @cd_getreg(%struct.com_s* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @CD1400_MSVR2_CTS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* @SER_CTS, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %44
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @CD1400_MSVR2_CD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @SER_DCD, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @CD1400_MSVR2_DSR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @SER_DSR, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @CD1400_MSVR2_RI, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @SER_RI, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %4, align 4
  br label %150

85:                                               ; preds = %16, %3
  %86 = load %struct.com_s*, %struct.com_s** %8, align 8
  %87 = getelementptr inbounds %struct.com_s, %struct.com_s* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @SER_DTR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load %struct.com_s*, %struct.com_s** %8, align 8
  %95 = getelementptr inbounds %struct.com_s, %struct.com_s* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %93, %85
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @SER_DTR, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.com_s*, %struct.com_s** %8, align 8
  %106 = getelementptr inbounds %struct.com_s, %struct.com_s* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %104, %99
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @SER_RTS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.com_s*, %struct.com_s** %8, align 8
  %118 = getelementptr inbounds %struct.com_s, %struct.com_s* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %116, %111
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @SER_RTS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.com_s*, %struct.com_s** %8, align 8
  %129 = getelementptr inbounds %struct.com_s, %struct.com_s* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %9, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %127, %122
  %135 = call i32 (...) @critical_enter()
  %136 = call i32 (...) @COM_LOCK()
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.com_s*, %struct.com_s** %8, align 8
  %139 = getelementptr inbounds %struct.com_s, %struct.com_s* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.com_s*, %struct.com_s** %8, align 8
  %141 = load i32, i32* @CD1400_MSVR1, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @cd_setreg(%struct.com_s* %140, i32 %141, i32 %142)
  %144 = load %struct.com_s*, %struct.com_s** %8, align 8
  %145 = load i32, i32* @CD1400_MSVR2, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @cd_setreg(%struct.com_s* %144, i32 %145, i32 %146)
  %148 = call i32 (...) @COM_UNLOCK()
  %149 = call i32 (...) @critical_exit()
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %134, %83
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @cd_getreg(%struct.com_s*, i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @COM_LOCK(...) #1

declare dso_local i32 @cd_setreg(%struct.com_s*, i32, i32) #1

declare dso_local i32 @COM_UNLOCK(...) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
