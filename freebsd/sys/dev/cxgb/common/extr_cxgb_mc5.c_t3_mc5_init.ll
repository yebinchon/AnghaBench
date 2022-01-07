; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_mc5.c_t3_mc5_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_mc5.c_t3_mc5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc5 = type { i32, i64, i32, i64, i32* }

@MC5_MODE_72_BIT = common dso_local global i64 0, align 8
@MAX_ROUTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@A_MC5_DB_CONFIG = common dso_local global i32 0, align 4
@F_TMMODE = common dso_local global i32 0, align 4
@F_COMPEN = common dso_local global i32 0, align 4
@F_TMRST = common dso_local global i32 0, align 4
@F_TMRDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TCAM reset timed out\0A\00", align 1
@A_MC5_DB_ROUTING_TABLE_INDEX = common dso_local global i32 0, align 4
@A_MC5_DB_FILTER_TABLE = common dso_local global i32 0, align 4
@A_MC5_DB_SERVER_INDEX = common dso_local global i32 0, align 4
@A_MC5_DB_DBGI_REQ_ADDR1 = common dso_local global i32 0, align 4
@A_MC5_DB_DBGI_REQ_ADDR2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported TCAM type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_mc5_init(%struct.mc5* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mc5*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.mc5* %0, %struct.mc5** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mc5*, %struct.mc5** %6, align 8
  %15 = getelementptr inbounds %struct.mc5, %struct.mc5* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.mc5*, %struct.mc5** %6, align 8
  %18 = getelementptr inbounds %struct.mc5, %struct.mc5* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MC5_MODE_72_BIT, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load %struct.mc5*, %struct.mc5** %6, align 8
  %24 = getelementptr inbounds %struct.mc5, %struct.mc5* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %13, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %126

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MAX_ROUTES, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %36, %37
  %39 = load i32, i32* %11, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33, %29
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %126

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.mc5*, %struct.mc5** %6, align 8
  %49 = getelementptr inbounds %struct.mc5, %struct.mc5* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* @A_MC5_DB_CONFIG, align 4
  %53 = load i32, i32* @F_TMMODE, align 4
  %54 = load i32, i32* @F_COMPEN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @V_COMPEN(i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @V_TMMODE(i32 %58)
  %60 = or i32 %57, %59
  %61 = load i32, i32* @F_TMRST, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @t3_set_reg_field(i32* %51, i32 %52, i32 %55, i32 %62)
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* @A_MC5_DB_CONFIG, align 4
  %66 = load i32, i32* @F_TMRDY, align 4
  %67 = call i64 @t3_wait_op_done(i32* %64, i32 %65, i32 %66, i32 1, i32 500, i32 0)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %50
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 (i32*, i8*, ...) @CH_ERR(i32* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %126

72:                                               ; preds = %50
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* @A_MC5_DB_ROUTING_TABLE_INDEX, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sub i32 %75, %76
  %78 = call i32 @t3_write_reg(i32* %73, i32 %74, i32 %77)
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* @A_MC5_DB_FILTER_TABLE, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub i32 %81, %82
  %84 = load i32, i32* %8, align 4
  %85 = sub i32 %83, %84
  %86 = call i32 @t3_write_reg(i32* %79, i32 %80, i32 %85)
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* @A_MC5_DB_SERVER_INDEX, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sub i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = sub i32 %91, %92
  %94 = load i32, i32* %7, align 4
  %95 = sub i32 %93, %94
  %96 = call i32 @t3_write_reg(i32* %87, i32 %88, i32 %95)
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* @A_MC5_DB_DBGI_REQ_ADDR1, align 4
  %99 = call i32 @t3_write_reg(i32* %97, i32 %98, i32 0)
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* @A_MC5_DB_DBGI_REQ_ADDR2, align 4
  %102 = call i32 @t3_write_reg(i32* %100, i32 %101, i32 0)
  %103 = load %struct.mc5*, %struct.mc5** %6, align 8
  %104 = call i32 @mc5_dbgi_mode_enable(%struct.mc5* %103)
  %105 = load %struct.mc5*, %struct.mc5** %6, align 8
  %106 = getelementptr inbounds %struct.mc5, %struct.mc5* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %114 [
    i32 128, label %108
    i32 129, label %111
  ]

108:                                              ; preds = %72
  %109 = load %struct.mc5*, %struct.mc5** %6, align 8
  %110 = call i32 @init_idt52100(%struct.mc5* %109)
  store i32 %110, i32* %10, align 4
  br label %122

111:                                              ; preds = %72
  %112 = load %struct.mc5*, %struct.mc5** %6, align 8
  %113 = call i32 @init_idt43102(%struct.mc5* %112)
  store i32 %113, i32* %10, align 4
  br label %122

114:                                              ; preds = %72
  %115 = load i32*, i32** %13, align 8
  %116 = load %struct.mc5*, %struct.mc5** %6, align 8
  %117 = getelementptr inbounds %struct.mc5, %struct.mc5* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32*, i8*, ...) @CH_ERR(i32* %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %114, %111, %108
  %123 = load %struct.mc5*, %struct.mc5** %6, align 8
  %124 = call i32 @mc5_dbgi_mode_disable(%struct.mc5* %123)
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %122, %69, %41, %28
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @t3_set_reg_field(i32*, i32, i32, i32) #1

declare dso_local i32 @V_COMPEN(i32) #1

declare dso_local i32 @V_TMMODE(i32) #1

declare dso_local i64 @t3_wait_op_done(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CH_ERR(i32*, i8*, ...) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

declare dso_local i32 @mc5_dbgi_mode_enable(%struct.mc5*) #1

declare dso_local i32 @init_idt52100(%struct.mc5*) #1

declare dso_local i32 @init_idt43102(%struct.mc5*) #1

declare dso_local i32 @mc5_dbgi_mode_disable(%struct.mc5*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
