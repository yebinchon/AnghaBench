; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller_irq = type { i64, i32, %struct.ahci_controller* }
%struct.ahci_controller = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i8*)*, i8* }

@AHCI_IRQ_MODE_ALL = common dso_local global i64 0, align 8
@AHCI_IS = common dso_local global i32 0, align 4
@AHCI_Q_EDGEIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ahci_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ahci_controller_irq*, align 8
  %4 = alloca %struct.ahci_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.ahci_controller_irq*
  store %struct.ahci_controller_irq* %10, %struct.ahci_controller_irq** %3, align 8
  %11 = load %struct.ahci_controller_irq*, %struct.ahci_controller_irq** %3, align 8
  %12 = getelementptr inbounds %struct.ahci_controller_irq, %struct.ahci_controller_irq* %11, i32 0, i32 2
  %13 = load %struct.ahci_controller*, %struct.ahci_controller** %12, align 8
  store %struct.ahci_controller* %13, %struct.ahci_controller** %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.ahci_controller_irq*, %struct.ahci_controller_irq** %3, align 8
  %15 = getelementptr inbounds %struct.ahci_controller_irq, %struct.ahci_controller_irq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AHCI_IRQ_MODE_ALL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %20 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %21 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %26 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  br label %34

28:                                               ; preds = %19
  %29 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %30 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AHCI_IS, align 4
  %33 = call i32 @ATA_INL(i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %28, %24
  br label %49

35:                                               ; preds = %1
  %36 = load %struct.ahci_controller_irq*, %struct.ahci_controller_irq** %3, align 8
  %37 = getelementptr inbounds %struct.ahci_controller_irq, %struct.ahci_controller_irq* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %41 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AHCI_IS, align 4
  %44 = call i32 @ATA_INL(i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 -1, %45
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %35, %34
  %50 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %51 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %56 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 1, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %61 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @AHCI_Q_EDGEIS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %75 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AHCI_IS, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @ATA_OUTL(i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %70
  br label %81

81:                                               ; preds = %115, %80
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %84 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %118

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %8, align 4
  %90 = shl i32 1, %89
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %87
  %94 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %95 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %94, i32 0, i32 6
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %7, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %93
  %104 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %105 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %104, i32 0, i32 6
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32 (i8*)*, i32 (i8*)** %110, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 %111(i8* %112)
  br label %114

114:                                              ; preds = %103, %93, %87
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %81

118:                                              ; preds = %81
  br label %119

119:                                              ; preds = %151, %118
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %122 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %125 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %123, %126
  %128 = icmp slt i32 %120, %127
  br i1 %128, label %129, label %154

129:                                              ; preds = %119
  %130 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %131 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %130, i32 0, i32 6
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  store i8* %137, i8** %7, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %150

139:                                              ; preds = %129
  %140 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %141 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %140, i32 0, i32 6
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32 (i8*)*, i32 (i8*)** %146, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 %147(i8* %148)
  br label %150

150:                                              ; preds = %139, %129
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %119

154:                                              ; preds = %119
  %155 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %156 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @AHCI_Q_EDGEIS, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %154
  %162 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %163 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @AHCI_IS, align 4
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @ATA_OUTL(i32 %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %161, %154
  %169 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %170 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @AHCI_IS, align 4
  %173 = call i32 @ATA_RBL(i32 %171, i32 %172)
  ret void
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_RBL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
