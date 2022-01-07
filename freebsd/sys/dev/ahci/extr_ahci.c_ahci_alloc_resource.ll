; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ahci_controller = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.resource* }

@AHCI_REMAPPED_UNIT = common dso_local global i32 0, align 4
@AHCI_UNIT = common dso_local global i32 0, align 4
@AHCI_EM_UNIT = common dso_local global i32 0, align 4
@AHCI_OFFSET = common dso_local global i32 0, align 4
@AHCI_EM_CTL = common dso_local global i32 0, align 4
@AHCI_EM_XMT = common dso_local global i32 0, align 4
@AHCI_EM_SMB = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @ahci_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ahci_controller*, align 8
  %18 = alloca %struct.resource*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.ahci_controller* @device_get_softc(i32 %27)
  store %struct.ahci_controller* %28, %struct.ahci_controller** %17, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @device_get_ivars(i32 %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  %32 = load i32, i32* %22, align 4
  %33 = load i32, i32* @AHCI_REMAPPED_UNIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %8
  %37 = load i32, i32* @AHCI_UNIT, align 4
  %38 = load i32, i32* %22, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %22, align 4
  %40 = load %struct.ahci_controller*, %struct.ahci_controller** %17, align 8
  %41 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %22, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %22, align 4
  store i32 1, i32* %24, align 4
  br label %57

47:                                               ; preds = %8
  %48 = load i32, i32* %22, align 4
  %49 = load i32, i32* @AHCI_EM_UNIT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @AHCI_UNIT, align 4
  %54 = load i32, i32* %22, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %22, align 4
  store i32 1, i32* %23, align 4
  br label %56

56:                                               ; preds = %52, %47
  br label %57

57:                                               ; preds = %56, %36
  store %struct.resource* null, %struct.resource** %18, align 8
  %58 = load i32, i32* %11, align 4
  switch i32 %58, label %180 [
    i32 128, label %59
    i32 129, label %167
  ]

59:                                               ; preds = %57
  %60 = load i32, i32* %24, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load %struct.ahci_controller*, %struct.ahci_controller** %17, align 8
  %64 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %22, align 4
  %67 = load %struct.ahci_controller*, %struct.ahci_controller** %17, align 8
  %68 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %66, %69
  %71 = add nsw i32 %65, %70
  store i32 %71, i32* %20, align 4
  %72 = load %struct.ahci_controller*, %struct.ahci_controller** %17, align 8
  %73 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %21, align 4
  br label %125

75:                                               ; preds = %59
  %76 = load i32, i32* %23, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @AHCI_OFFSET, align 4
  %80 = load i32, i32* %22, align 4
  %81 = shl i32 %80, 7
  %82 = add nsw i32 %79, %81
  store i32 %82, i32* %20, align 4
  store i32 128, i32* %21, align 4
  br label %124

83:                                               ; preds = %75
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @AHCI_EM_CTL, align 4
  store i32 %88, i32* %20, align 4
  store i32 4, i32* %21, align 4
  br label %123

89:                                               ; preds = %83
  %90 = load %struct.ahci_controller*, %struct.ahci_controller** %17, align 8
  %91 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, -65536
  %94 = lshr i32 %93, 14
  store i32 %94, i32* %20, align 4
  %95 = load %struct.ahci_controller*, %struct.ahci_controller** %17, align 8
  %96 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 65535
  %99 = shl i32 %98, 2
  store i32 %99, i32* %21, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %122

103:                                              ; preds = %89
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load %struct.ahci_controller*, %struct.ahci_controller** %17, align 8
  %109 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @AHCI_EM_XMT, align 4
  %112 = load i32, i32* @AHCI_EM_SMB, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %110, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %20, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %20, align 4
  br label %121

120:                                              ; preds = %107, %103
  br label %180

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121, %89
  br label %123

123:                                              ; preds = %122, %87
  br label %124

124:                                              ; preds = %123, %78
  br label %125

125:                                              ; preds = %124, %62
  %126 = load %struct.ahci_controller*, %struct.ahci_controller** %17, align 8
  %127 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @rman_get_start(i32 %128)
  store i32 %129, i32* %19, align 4
  %130 = load %struct.ahci_controller*, %struct.ahci_controller** %17, align 8
  %131 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %130, i32 0, i32 5
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %20, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %20, align 4
  %137 = add nsw i32 %135, %136
  %138 = load i32, i32* %21, align 4
  %139 = add nsw i32 %137, %138
  %140 = sub nsw i32 %139, 1
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* @RF_ACTIVE, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call %struct.resource* @rman_reserve_resource(i32* %131, i32 %134, i32 %140, i32 %141, i32 %142, i32 %143)
  store %struct.resource* %144, %struct.resource** %18, align 8
  %145 = load %struct.resource*, %struct.resource** %18, align 8
  %146 = icmp ne %struct.resource* %145, null
  br i1 %146, label %147, label %166

147:                                              ; preds = %125
  %148 = load %struct.ahci_controller*, %struct.ahci_controller** %17, align 8
  %149 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @rman_get_bushandle(i32 %150)
  store i32 %151, i32* %25, align 4
  %152 = load %struct.ahci_controller*, %struct.ahci_controller** %17, align 8
  %153 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @rman_get_bustag(i32 %154)
  store i32 %155, i32* %26, align 4
  %156 = load i32, i32* %26, align 4
  %157 = load i32, i32* %25, align 4
  %158 = load i32, i32* %20, align 4
  %159 = call i32 @bus_space_subregion(i32 %156, i32 %157, i32 %158, i32 128, i32* %25)
  %160 = load %struct.resource*, %struct.resource** %18, align 8
  %161 = load i32, i32* %25, align 4
  %162 = call i32 @rman_set_bushandle(%struct.resource* %160, i32 %161)
  %163 = load %struct.resource*, %struct.resource** %18, align 8
  %164 = load i32, i32* %26, align 4
  %165 = call i32 @rman_set_bustag(%struct.resource* %163, i32 %164)
  br label %166

166:                                              ; preds = %147, %125
  br label %180

167:                                              ; preds = %57
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ATA_IRQ_RID, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %167
  %173 = load %struct.ahci_controller*, %struct.ahci_controller** %17, align 8
  %174 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %173, i32 0, i32 3
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load %struct.resource*, %struct.resource** %177, align 8
  store %struct.resource* %178, %struct.resource** %18, align 8
  br label %179

179:                                              ; preds = %172, %167
  br label %180

180:                                              ; preds = %57, %179, %166, %120
  %181 = load %struct.resource*, %struct.resource** %18, align 8
  ret %struct.resource* %181
}

declare dso_local %struct.ahci_controller* @device_get_softc(i32) #1

declare dso_local i64 @device_get_ivars(i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @bus_space_subregion(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
