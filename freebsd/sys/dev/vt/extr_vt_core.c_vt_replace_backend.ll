; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_replace_backend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_replace_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device.1 = type { i32, %struct.TYPE_3__**, %struct.TYPE_4__*, %struct.vt_driver*, i32*, %struct.vt_driver*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vt_driver = type { i32 (%struct.vt_device*, i8*)*, i32 (%struct.vt_device.0*)* }
%struct.vt_device = type opaque
%struct.vt_device.0 = type opaque

@main_vd = common dso_local global %struct.vt_device.1* null, align 8
@VDF_ASYNC = common dso_local global i32 0, align 4
@VDF_TEXTMODE = common dso_local global i32 0, align 4
@VDF_DOWNGRADE = common dso_local global i32 0, align 4
@VT_CONSWINDOW = common dso_local global i64 0, align 8
@VDF_SPLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_driver*, i8*)* @vt_replace_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_replace_backend(%struct.vt_driver* %0, i8* %1) #0 {
  %3 = alloca %struct.vt_driver*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vt_device.1*, align 8
  %6 = alloca %struct.vt_driver*, align 8
  %7 = alloca i8*, align 8
  store %struct.vt_driver* %0, %struct.vt_driver** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.vt_device.1*, %struct.vt_device.1** @main_vd, align 8
  store %struct.vt_device.1* %8, %struct.vt_device.1** %5, align 8
  %9 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %10 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VDF_ASYNC, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %17 = call i32 @VT_LOCK(%struct.vt_device.1* %16)
  %18 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %19 = call i32 @vt_suspend_flush_timer(%struct.vt_device.1* %18)
  %20 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %21 = call i32 @VT_UNLOCK(%struct.vt_device.1* %20)
  %22 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %23 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @terminal_mute(i32 %26, i32 1)
  br label %28

28:                                               ; preds = %15, %2
  %29 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %30 = call i32 @VT_LOCK(%struct.vt_device.1* %29)
  %31 = load i32, i32* @VDF_TEXTMODE, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %34 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.vt_driver*, %struct.vt_driver** %3, align 8
  %38 = icmp ne %struct.vt_driver* %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %28
  %40 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %41 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %40, i32 0, i32 3
  %42 = load %struct.vt_driver*, %struct.vt_driver** %41, align 8
  %43 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %44 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %43, i32 0, i32 5
  store %struct.vt_driver* %42, %struct.vt_driver** %44, align 8
  %45 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %46 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %49 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %48, i32 0, i32 4
  store i32* %47, i32** %49, align 8
  %50 = load %struct.vt_driver*, %struct.vt_driver** %3, align 8
  %51 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %52 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %51, i32 0, i32 3
  store %struct.vt_driver* %50, %struct.vt_driver** %52, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %56 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %55, i32 0, i32 6
  store i32* %54, i32** %56, align 8
  %57 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %58 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %57, i32 0, i32 3
  %59 = load %struct.vt_driver*, %struct.vt_driver** %58, align 8
  %60 = getelementptr inbounds %struct.vt_driver, %struct.vt_driver* %59, i32 0, i32 1
  %61 = load i32 (%struct.vt_device.0*)*, i32 (%struct.vt_device.0*)** %60, align 8
  %62 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %63 = bitcast %struct.vt_device.1* %62 to %struct.vt_device.0*
  %64 = call i32 %61(%struct.vt_device.0* %63)
  br label %130

65:                                               ; preds = %28
  %66 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %67 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %66, i32 0, i32 5
  %68 = load %struct.vt_driver*, %struct.vt_driver** %67, align 8
  %69 = icmp ne %struct.vt_driver* %68, null
  br i1 %69, label %70, label %129

70:                                               ; preds = %65
  %71 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %72 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %129

75:                                               ; preds = %70
  %76 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %77 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %76, i32 0, i32 3
  %78 = load %struct.vt_driver*, %struct.vt_driver** %77, align 8
  store %struct.vt_driver* %78, %struct.vt_driver** %6, align 8
  %79 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %80 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = bitcast i32* %81 to i8*
  store i8* %82, i8** %7, align 8
  %83 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %84 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %83, i32 0, i32 5
  %85 = load %struct.vt_driver*, %struct.vt_driver** %84, align 8
  %86 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %87 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %86, i32 0, i32 3
  store %struct.vt_driver* %85, %struct.vt_driver** %87, align 8
  %88 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %89 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %92 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %91, i32 0, i32 6
  store i32* %90, i32** %92, align 8
  %93 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %94 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %93, i32 0, i32 5
  store %struct.vt_driver* null, %struct.vt_driver** %94, align 8
  %95 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %96 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %95, i32 0, i32 4
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* @VDF_DOWNGRADE, align 4
  %98 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %99 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %103 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %102, i32 0, i32 3
  %104 = load %struct.vt_driver*, %struct.vt_driver** %103, align 8
  %105 = getelementptr inbounds %struct.vt_driver, %struct.vt_driver* %104, i32 0, i32 1
  %106 = load i32 (%struct.vt_device.0*)*, i32 (%struct.vt_device.0*)** %105, align 8
  %107 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %108 = bitcast %struct.vt_device.1* %107 to %struct.vt_device.0*
  %109 = call i32 %106(%struct.vt_device.0* %108)
  %110 = load %struct.vt_driver*, %struct.vt_driver** %6, align 8
  %111 = getelementptr inbounds %struct.vt_driver, %struct.vt_driver* %110, i32 0, i32 0
  %112 = load i32 (%struct.vt_device*, i8*)*, i32 (%struct.vt_device*, i8*)** %111, align 8
  %113 = icmp ne i32 (%struct.vt_device*, i8*)* %112, null
  br i1 %113, label %114, label %122

114:                                              ; preds = %75
  %115 = load %struct.vt_driver*, %struct.vt_driver** %6, align 8
  %116 = getelementptr inbounds %struct.vt_driver, %struct.vt_driver* %115, i32 0, i32 0
  %117 = load i32 (%struct.vt_device*, i8*)*, i32 (%struct.vt_device*, i8*)** %116, align 8
  %118 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %119 = bitcast %struct.vt_device.1* %118 to %struct.vt_device*
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 %117(%struct.vt_device* %119, i8* %120)
  br label %122

122:                                              ; preds = %114, %75
  %123 = load i32, i32* @VDF_DOWNGRADE, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %126 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %122, %70, %65
  br label %130

130:                                              ; preds = %129, %39
  %131 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %132 = call i32 @VT_UNLOCK(%struct.vt_device.1* %131)
  %133 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %134 = call i32 @vt_upgrade(%struct.vt_device.1* %133)
  %135 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %136 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @VDF_ASYNC, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %130
  %142 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %143 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %142, i32 0, i32 2
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @terminal_mute(i32 %146, i32 0)
  %148 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %149 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %148, i32 0, i32 2
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = call i32 @vt_resume_flush_timer(%struct.TYPE_4__* %150, i32 0)
  br label %152

152:                                              ; preds = %141, %130
  %153 = load %struct.vt_device.1*, %struct.vt_device.1** %5, align 8
  %154 = getelementptr inbounds %struct.vt_device.1, %struct.vt_device.1* %153, i32 0, i32 1
  %155 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %154, align 8
  %156 = load i64, i64* @VT_CONSWINDOW, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %155, i64 %156
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @termcn_cnregister(i32 %160)
  ret void
}

declare dso_local i32 @VT_LOCK(%struct.vt_device.1*) #1

declare dso_local i32 @vt_suspend_flush_timer(%struct.vt_device.1*) #1

declare dso_local i32 @VT_UNLOCK(%struct.vt_device.1*) #1

declare dso_local i32 @terminal_mute(i32, i32) #1

declare dso_local i32 @vt_upgrade(%struct.vt_device.1*) #1

declare dso_local i32 @vt_resume_flush_timer(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @termcn_cnregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
