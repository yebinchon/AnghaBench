; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_main.c_gdb_do_qsupported.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_main.c_gdb_do_qsupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gdb_rxsz = common dso_local global i64 0, align 8
@gdb_rxp = common dso_local global i8* null, align 8
@gdb_feature_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"PacketSize\00", align 1
@GDB_BUFSZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"$#nn\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c";qXfer:threads:read+\00", align 1
@gdb_cur = common dso_local global %struct.TYPE_2__* null, align 8
@GDB_DBGP_FEAT_RELIABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c";QStartNoAckMode+\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @gdb_do_qsupported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_do_qsupported(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  store i32 0, i32* %8, align 4
  %9 = call signext i8 (...) @gdb_rx_char()
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 58
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %125

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %99, %98, %69, %63, %13
  %15 = load i64, i64* @gdb_rxsz, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %105

17:                                               ; preds = %14
  %18 = load i8*, i8** @gdb_rxp, align 8
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** @gdb_rxp, align 8
  %20 = call i8* @strchrnul(i8* %19, i8 signext 59)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i8*, i8** @gdb_rxp, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 %26
  store i8* %28, i8** @gdb_rxp, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @gdb_rxsz, align 8
  %31 = sub i64 %30, %29
  store i64 %31, i64* @gdb_rxsz, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %17
  %37 = load i8*, i8** %4, align 8
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** @gdb_rxp, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** @gdb_rxp, align 8
  %40 = load i64, i64* @gdb_rxsz, align 8
  %41 = sub nsw i64 %40, 1
  store i64 %41, i64* @gdb_rxsz, align 8
  br label %42

42:                                               ; preds = %36, %17
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %125

46:                                               ; preds = %42
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %5, align 1
  %52 = load i8, i8* %5, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 45
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load i8, i8* %5, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 43
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i8*, i8** %3, align 8
  %61 = call i32* @strchr(i8* %60, i8 signext 61)
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %14

64:                                               ; preds = %59
  br label %125

65:                                               ; preds = %55, %46
  %66 = load i8, i8* %5, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 43
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %14

70:                                               ; preds = %65
  %71 = load i8*, i8** %3, align 8
  %72 = load i64, i64* %7, align 8
  %73 = sub i64 %72, 1
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  store i8 0, i8* %74, align 1
  store i64 0, i64* %6, align 8
  br label %75

75:                                               ; preds = %90, %70
  %76 = load i64, i64* %6, align 8
  %77 = load i32*, i32** @gdb_feature_names, align 8
  %78 = call i64 @nitems(i32* %77)
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load i32*, i32** @gdb_feature_names, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %3, align 8
  %86 = call i64 @strcmp(i32 %84, i8* %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %93

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %6, align 8
  br label %75

93:                                               ; preds = %88, %75
  %94 = load i64, i64* %6, align 8
  %95 = load i32*, i32** @gdb_feature_names, align 8
  %96 = call i64 @nitems(i32* %95)
  %97 = icmp eq i64 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %14

99:                                               ; preds = %93
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @BIT(i64 %100)
  %102 = load i32*, i32** %2, align 8
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %101
  store i32 %104, i32* %102, align 4
  br label %14

105:                                              ; preds = %14
  %106 = call i32 @gdb_tx_begin(i32 0)
  %107 = call i32 @gdb_tx_str(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %108 = call i32 @gdb_tx_char(i8 signext 61)
  %109 = load i64, i64* @GDB_BUFSZ, align 8
  %110 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %111 = add nsw i64 %109, %110
  %112 = sub nsw i64 %111, 1
  %113 = call i32 @gdb_tx_varhex(i64 %112)
  %114 = call i32 @gdb_tx_str(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @GDB_DBGP_FEAT_RELIABLE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %105
  %122 = call i32 @gdb_tx_str(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %105
  %124 = call i32 (...) @gdb_tx_end()
  br label %129

125:                                              ; preds = %64, %45, %12
  %126 = load i32*, i32** %2, align 8
  store i32 0, i32* %126, align 4
  %127 = load i32, i32* @EINVAL, align 4
  %128 = call i32 @gdb_tx_err(i32 %127)
  br label %129

129:                                              ; preds = %125, %123
  ret void
}

declare dso_local signext i8 @gdb_rx_char(...) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @nitems(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @gdb_tx_begin(i32) #1

declare dso_local i32 @gdb_tx_str(i8*) #1

declare dso_local i32 @gdb_tx_char(i8 signext) #1

declare dso_local i32 @gdb_tx_varhex(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @gdb_tx_end(...) #1

declare dso_local i32 @gdb_tx_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
