; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_map_intr_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_map_intr_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32 }

@MSINUM_NUM_INTR_SOURCE = common dso_local global i32 0, align 4
@JME_MSI_MESSAGES = common dso_local global i32 0, align 4
@N_INTR_TXQ0_COMP = common dso_local global i32 0, align 4
@N_INTR_TXQ1_COMP = common dso_local global i32 0, align 4
@N_INTR_TXQ2_COMP = common dso_local global i32 0, align 4
@N_INTR_TXQ3_COMP = common dso_local global i32 0, align 4
@N_INTR_TXQ4_COMP = common dso_local global i32 0, align 4
@N_INTR_TXQ5_COMP = common dso_local global i32 0, align 4
@N_INTR_TXQ6_COMP = common dso_local global i32 0, align 4
@N_INTR_TXQ7_COMP = common dso_local global i32 0, align 4
@N_INTR_TXQ_COAL = common dso_local global i32 0, align 4
@N_INTR_TXQ_COAL_TO = common dso_local global i32 0, align 4
@N_INTR_RXQ0_COMP = common dso_local global i32 0, align 4
@N_INTR_RXQ1_COMP = common dso_local global i32 0, align 4
@N_INTR_RXQ2_COMP = common dso_local global i32 0, align 4
@N_INTR_RXQ3_COMP = common dso_local global i32 0, align 4
@N_INTR_RXQ0_DESC_EMPTY = common dso_local global i32 0, align 4
@N_INTR_RXQ1_DESC_EMPTY = common dso_local global i32 0, align 4
@N_INTR_RXQ2_DESC_EMPTY = common dso_local global i32 0, align 4
@N_INTR_RXQ3_DESC_EMPTY = common dso_local global i32 0, align 4
@N_INTR_RXQ0_COAL = common dso_local global i32 0, align 4
@N_INTR_RXQ1_COAL = common dso_local global i32 0, align 4
@N_INTR_RXQ2_COAL = common dso_local global i32 0, align 4
@N_INTR_RXQ3_COAL = common dso_local global i32 0, align 4
@N_INTR_RXQ0_COAL_TO = common dso_local global i32 0, align 4
@N_INTR_RXQ1_COAL_TO = common dso_local global i32 0, align 4
@N_INTR_RXQ2_COAL_TO = common dso_local global i32 0, align 4
@N_INTR_RXQ3_COAL_TO = common dso_local global i32 0, align 4
@JME_MSINUM_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_softc*)* @jme_map_intr_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_map_intr_vector(%struct.jme_softc* %0) #0 {
  %2 = alloca %struct.jme_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.jme_softc* %0, %struct.jme_softc** %2, align 8
  %5 = load i32, i32* @MSINUM_NUM_INTR_SOURCE, align 4
  %6 = load i32, i32* @JME_MSI_MESSAGES, align 4
  %7 = sdiv i32 %5, %6
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = mul nuw i64 4, %8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @bzero(i32* %10, i32 %12)
  %14 = load i32, i32* @N_INTR_TXQ0_COMP, align 4
  %15 = call i32 @MSINUM_INTR_SOURCE(i32 2, i32 %14)
  %16 = load i32, i32* @N_INTR_TXQ0_COMP, align 4
  %17 = call i64 @MSINUM_REG_INDEX(i32 %16)
  %18 = getelementptr inbounds i32, i32* %10, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @N_INTR_TXQ1_COMP, align 4
  %20 = call i32 @MSINUM_INTR_SOURCE(i32 2, i32 %19)
  %21 = load i32, i32* @N_INTR_TXQ1_COMP, align 4
  %22 = call i64 @MSINUM_REG_INDEX(i32 %21)
  %23 = getelementptr inbounds i32, i32* %10, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @N_INTR_TXQ2_COMP, align 4
  %27 = call i32 @MSINUM_INTR_SOURCE(i32 2, i32 %26)
  %28 = load i32, i32* @N_INTR_TXQ2_COMP, align 4
  %29 = call i64 @MSINUM_REG_INDEX(i32 %28)
  %30 = getelementptr inbounds i32, i32* %10, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @N_INTR_TXQ3_COMP, align 4
  %34 = call i32 @MSINUM_INTR_SOURCE(i32 2, i32 %33)
  %35 = load i32, i32* @N_INTR_TXQ3_COMP, align 4
  %36 = call i64 @MSINUM_REG_INDEX(i32 %35)
  %37 = getelementptr inbounds i32, i32* %10, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @N_INTR_TXQ4_COMP, align 4
  %41 = call i32 @MSINUM_INTR_SOURCE(i32 2, i32 %40)
  %42 = load i32, i32* @N_INTR_TXQ4_COMP, align 4
  %43 = call i64 @MSINUM_REG_INDEX(i32 %42)
  %44 = getelementptr inbounds i32, i32* %10, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @N_INTR_TXQ5_COMP, align 4
  %48 = call i32 @MSINUM_INTR_SOURCE(i32 2, i32 %47)
  %49 = load i32, i32* @N_INTR_TXQ5_COMP, align 4
  %50 = call i64 @MSINUM_REG_INDEX(i32 %49)
  %51 = getelementptr inbounds i32, i32* %10, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @N_INTR_TXQ6_COMP, align 4
  %55 = call i32 @MSINUM_INTR_SOURCE(i32 2, i32 %54)
  %56 = load i32, i32* @N_INTR_TXQ6_COMP, align 4
  %57 = call i64 @MSINUM_REG_INDEX(i32 %56)
  %58 = getelementptr inbounds i32, i32* %10, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @N_INTR_TXQ7_COMP, align 4
  %62 = call i32 @MSINUM_INTR_SOURCE(i32 2, i32 %61)
  %63 = load i32, i32* @N_INTR_TXQ7_COMP, align 4
  %64 = call i64 @MSINUM_REG_INDEX(i32 %63)
  %65 = getelementptr inbounds i32, i32* %10, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @N_INTR_TXQ_COAL, align 4
  %69 = call i32 @MSINUM_INTR_SOURCE(i32 2, i32 %68)
  %70 = load i32, i32* @N_INTR_TXQ_COAL, align 4
  %71 = call i64 @MSINUM_REG_INDEX(i32 %70)
  %72 = getelementptr inbounds i32, i32* %10, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @N_INTR_TXQ_COAL_TO, align 4
  %76 = call i32 @MSINUM_INTR_SOURCE(i32 2, i32 %75)
  %77 = load i32, i32* @N_INTR_TXQ_COAL_TO, align 4
  %78 = call i64 @MSINUM_REG_INDEX(i32 %77)
  %79 = getelementptr inbounds i32, i32* %10, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @N_INTR_RXQ0_COMP, align 4
  %83 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %82)
  %84 = load i32, i32* @N_INTR_RXQ0_COMP, align 4
  %85 = call i64 @MSINUM_REG_INDEX(i32 %84)
  %86 = getelementptr inbounds i32, i32* %10, i64 %85
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @N_INTR_RXQ1_COMP, align 4
  %88 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %87)
  %89 = load i32, i32* @N_INTR_RXQ1_COMP, align 4
  %90 = call i64 @MSINUM_REG_INDEX(i32 %89)
  %91 = getelementptr inbounds i32, i32* %10, i64 %90
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @N_INTR_RXQ2_COMP, align 4
  %93 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %92)
  %94 = load i32, i32* @N_INTR_RXQ2_COMP, align 4
  %95 = call i64 @MSINUM_REG_INDEX(i32 %94)
  %96 = getelementptr inbounds i32, i32* %10, i64 %95
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @N_INTR_RXQ3_COMP, align 4
  %98 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %97)
  %99 = load i32, i32* @N_INTR_RXQ3_COMP, align 4
  %100 = call i64 @MSINUM_REG_INDEX(i32 %99)
  %101 = getelementptr inbounds i32, i32* %10, i64 %100
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @N_INTR_RXQ0_DESC_EMPTY, align 4
  %103 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %102)
  %104 = load i32, i32* @N_INTR_RXQ0_DESC_EMPTY, align 4
  %105 = call i64 @MSINUM_REG_INDEX(i32 %104)
  %106 = getelementptr inbounds i32, i32* %10, i64 %105
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @N_INTR_RXQ1_DESC_EMPTY, align 4
  %108 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %107)
  %109 = load i32, i32* @N_INTR_RXQ1_DESC_EMPTY, align 4
  %110 = call i64 @MSINUM_REG_INDEX(i32 %109)
  %111 = getelementptr inbounds i32, i32* %10, i64 %110
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @N_INTR_RXQ2_DESC_EMPTY, align 4
  %113 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %112)
  %114 = load i32, i32* @N_INTR_RXQ2_DESC_EMPTY, align 4
  %115 = call i64 @MSINUM_REG_INDEX(i32 %114)
  %116 = getelementptr inbounds i32, i32* %10, i64 %115
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @N_INTR_RXQ3_DESC_EMPTY, align 4
  %118 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %117)
  %119 = load i32, i32* @N_INTR_RXQ3_DESC_EMPTY, align 4
  %120 = call i64 @MSINUM_REG_INDEX(i32 %119)
  %121 = getelementptr inbounds i32, i32* %10, i64 %120
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* @N_INTR_RXQ0_COAL, align 4
  %123 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %122)
  %124 = load i32, i32* @N_INTR_RXQ0_COAL, align 4
  %125 = call i64 @MSINUM_REG_INDEX(i32 %124)
  %126 = getelementptr inbounds i32, i32* %10, i64 %125
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* @N_INTR_RXQ1_COAL, align 4
  %128 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %127)
  %129 = load i32, i32* @N_INTR_RXQ1_COAL, align 4
  %130 = call i64 @MSINUM_REG_INDEX(i32 %129)
  %131 = getelementptr inbounds i32, i32* %10, i64 %130
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* @N_INTR_RXQ2_COAL, align 4
  %133 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %132)
  %134 = load i32, i32* @N_INTR_RXQ2_COAL, align 4
  %135 = call i64 @MSINUM_REG_INDEX(i32 %134)
  %136 = getelementptr inbounds i32, i32* %10, i64 %135
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* @N_INTR_RXQ3_COAL, align 4
  %138 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %137)
  %139 = load i32, i32* @N_INTR_RXQ3_COAL, align 4
  %140 = call i64 @MSINUM_REG_INDEX(i32 %139)
  %141 = getelementptr inbounds i32, i32* %10, i64 %140
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* @N_INTR_RXQ0_COAL_TO, align 4
  %143 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %142)
  %144 = load i32, i32* @N_INTR_RXQ0_COAL_TO, align 4
  %145 = call i64 @MSINUM_REG_INDEX(i32 %144)
  %146 = getelementptr inbounds i32, i32* %10, i64 %145
  store i32 %143, i32* %146, align 4
  %147 = load i32, i32* @N_INTR_RXQ1_COAL_TO, align 4
  %148 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %147)
  %149 = load i32, i32* @N_INTR_RXQ1_COAL_TO, align 4
  %150 = call i64 @MSINUM_REG_INDEX(i32 %149)
  %151 = getelementptr inbounds i32, i32* %10, i64 %150
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* @N_INTR_RXQ2_COAL_TO, align 4
  %153 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %152)
  %154 = load i32, i32* @N_INTR_RXQ2_COAL_TO, align 4
  %155 = call i64 @MSINUM_REG_INDEX(i32 %154)
  %156 = getelementptr inbounds i32, i32* %10, i64 %155
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* @N_INTR_RXQ3_COAL_TO, align 4
  %158 = call i32 @MSINUM_INTR_SOURCE(i32 1, i32 %157)
  %159 = load i32, i32* @N_INTR_RXQ3_COAL_TO, align 4
  %160 = call i64 @MSINUM_REG_INDEX(i32 %159)
  %161 = getelementptr inbounds i32, i32* %10, i64 %160
  store i32 %158, i32* %161, align 4
  %162 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %163 = load i64, i64* @JME_MSINUM_BASE, align 8
  %164 = add i64 %163, 0
  %165 = getelementptr inbounds i32, i32* %10, i64 0
  %166 = load i32, i32* %165, align 16
  %167 = call i32 @CSR_WRITE_4(%struct.jme_softc* %162, i64 %164, i32 %166)
  %168 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %169 = load i64, i64* @JME_MSINUM_BASE, align 8
  %170 = add i64 %169, 4
  %171 = getelementptr inbounds i32, i32* %10, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @CSR_WRITE_4(%struct.jme_softc* %168, i64 %170, i32 %172)
  %174 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %175 = load i64, i64* @JME_MSINUM_BASE, align 8
  %176 = add i64 %175, 8
  %177 = getelementptr inbounds i32, i32* %10, i64 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @CSR_WRITE_4(%struct.jme_softc* %174, i64 %176, i32 %178)
  %180 = load %struct.jme_softc*, %struct.jme_softc** %2, align 8
  %181 = load i64, i64* @JME_MSINUM_BASE, align 8
  %182 = add i64 %181, 12
  %183 = getelementptr inbounds i32, i32* %10, i64 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @CSR_WRITE_4(%struct.jme_softc* %180, i64 %182, i32 %184)
  %186 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %186)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @MSINUM_INTR_SOURCE(i32, i32) #2

declare dso_local i64 @MSINUM_REG_INDEX(i32) #2

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
