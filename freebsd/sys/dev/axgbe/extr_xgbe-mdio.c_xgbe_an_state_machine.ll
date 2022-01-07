; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_an_state_machine.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_an_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, i32, i32, i64, i8*, i8*, i32 }

@XGBE_AN_PG_RCV = common dso_local global i32 0, align 4
@XGBE_AN_INC_LINK = common dso_local global i32 0, align 4
@XGBE_AN_INT_CMPLT = common dso_local global i32 0, align 4
@XGBE_AN_ERROR = common dso_local global i8* null, align 8
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_INT = common dso_local global i32 0, align 4
@XGBE_RX_BPA = common dso_local global i8* null, align 8
@MDIO_AN_INTMASK = common dso_local global i32 0, align 4
@XGBE_AN_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_an_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_an_state_machine(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 4
  %9 = call i32 @sx_xlock(i32* %8)
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %183

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %181, %15
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %18 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @XGBE_AN_PG_RCV, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %25 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %24, i32 0, i32 0
  store i32 129, i32* %25, align 8
  %26 = load i32, i32* @XGBE_AN_PG_RCV, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %71

32:                                               ; preds = %16
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @XGBE_AN_INC_LINK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %41 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %40, i32 0, i32 0
  store i32 131, i32* %41, align 8
  %42 = load i32, i32* @XGBE_AN_INC_LINK, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %45 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %70

48:                                               ; preds = %32
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %50 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @XGBE_AN_INT_CMPLT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %57 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %56, i32 0, i32 0
  store i32 132, i32* %57, align 8
  %58 = load i32, i32* @XGBE_AN_INT_CMPLT, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %61 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %69

64:                                               ; preds = %48
  %65 = load i8*, i8** @XGBE_AN_ERROR, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %68 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %64, %55
  br label %70

70:                                               ; preds = %69, %39
  br label %71

71:                                               ; preds = %70, %23
  %72 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %73 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %76 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %175, %71
  %78 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %79 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %3, align 4
  %81 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %82 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %115 [
    i32 128, label %84
    i32 129, label %87
    i32 131, label %96
    i32 132, label %105
    i32 130, label %114
  ]

84:                                               ; preds = %77
  %85 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %86 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %85, i32 0, i32 8
  store i32 0, i32* %86, align 8
  br label %120

87:                                               ; preds = %77
  %88 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %89 = call i32 @xgbe_an_page_received(%struct.xgbe_prv_data* %88)
  %90 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %91 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %93 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  br label %120

96:                                               ; preds = %77
  %97 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %98 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %97, i32 0, i32 8
  store i32 0, i32* %98, align 8
  %99 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %100 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %99, i32 0, i32 3
  store i32 0, i32* %100, align 4
  %101 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %102 = call i32 @xgbe_an_incompat_link(%struct.xgbe_prv_data* %101)
  %103 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %104 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %120

105:                                              ; preds = %77
  %106 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %107 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 0, i32 1
  %112 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %113 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  br label %120

114:                                              ; preds = %77
  br label %120

115:                                              ; preds = %77
  %116 = load i8*, i8** @XGBE_AN_ERROR, align 8
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %119 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %115, %114, %105, %96, %87, %84
  %121 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %122 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 130
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %127 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %126, i32 0, i32 1
  store i32 0, i32* %127, align 4
  %128 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %129 = load i32, i32* @MDIO_MMD_AN, align 4
  %130 = load i32, i32* @MDIO_AN_INT, align 4
  %131 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %128, i32 %129, i32 %130, i32 0)
  br label %148

132:                                              ; preds = %120
  %133 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %134 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = load i8*, i8** @XGBE_AN_ERROR, align 8
  %139 = icmp eq i8* %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %132
  %141 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %142 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %141, i32 0, i32 1
  store i32 0, i32* %142, align 4
  %143 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %144 = load i32, i32* @MDIO_MMD_AN, align 4
  %145 = load i32, i32* @MDIO_AN_INT, align 4
  %146 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %143, i32 %144, i32 %145, i32 0)
  br label %147

147:                                              ; preds = %140, %132
  br label %148

148:                                              ; preds = %147, %125
  %149 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %150 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp sge i32 %151, 132
  br i1 %152, label %153, label %169

153:                                              ; preds = %148
  %154 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %155 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %158 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %160 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %159, i32 0, i32 0
  store i32 128, i32* %160, align 8
  %161 = load i8*, i8** @XGBE_RX_BPA, align 8
  %162 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %163 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %162, i32 0, i32 7
  store i8* %161, i8** %163, align 8
  %164 = load i8*, i8** @XGBE_RX_BPA, align 8
  %165 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %166 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %165, i32 0, i32 6
  store i8* %164, i8** %166, align 8
  %167 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %168 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %167, i32 0, i32 5
  store i64 0, i64* %168, align 8
  br label %169

169:                                              ; preds = %153, %148
  %170 = load i32, i32* %3, align 4
  %171 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %172 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %170, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  br label %77

176:                                              ; preds = %169
  %177 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %178 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %16

182:                                              ; preds = %176
  br label %183

183:                                              ; preds = %182, %14
  %184 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %185 = load i32, i32* @MDIO_MMD_AN, align 4
  %186 = load i32, i32* @MDIO_AN_INTMASK, align 4
  %187 = load i32, i32* @XGBE_AN_INT_MASK, align 4
  %188 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %184, i32 %185, i32 %186, i32 %187)
  %189 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %190 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %189, i32 0, i32 4
  %191 = call i32 @sx_xunlock(i32* %190)
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @xgbe_an_page_received(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an_incompat_link(%struct.xgbe_prv_data*) #1

declare dso_local i32 @XMDIO_WRITE(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
