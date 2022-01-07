; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_probe_nomatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_probe_nomatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@pci_nomatch_tab = common dso_local global %struct.TYPE_2__* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"<%s%s%s>\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c" at device %d.%d (no driver attached)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_probe_nomatch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i8* @pci_describe_device(i32 %10)
  store i8* %11, i8** %9, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* @M_DEVBUF, align 4
  %19 = call i32 @free(i8* %17, i32 %18)
  br label %122

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %86, %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pci_nomatch_tab, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %89

29:                                               ; preds = %21
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pci_nomatch_tab, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @pci_get_class(i32 %36)
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %85

39:                                               ; preds = %29
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pci_nomatch_tab, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %60

47:                                               ; preds = %39
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pci_nomatch_tab, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %7, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pci_nomatch_tab, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %6, align 4
  br label %84

60:                                               ; preds = %39
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pci_nomatch_tab, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @pci_get_subclass(i32 %67)
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %60
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pci_nomatch_tab, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %8, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pci_nomatch_tab, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %70, %60
  br label %84

84:                                               ; preds = %83, %47
  br label %85

85:                                               ; preds = %84, %29
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %21

89:                                               ; preds = %21
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i64, i64* @bootverbose, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %3, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i8*, i8** %7, align 8
  br label %102

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i8* [ %100, %99 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %101 ]
  %104 = load i8*, i8** %7, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i8*, i8** %8, align 8
  %108 = icmp ne i8* %107, null
  br label %109

109:                                              ; preds = %106, %102
  %110 = phi i1 [ false, %102 ], [ %108, %106 ]
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %113 = load i8*, i8** %8, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i8*, i8** %8, align 8
  br label %118

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %115
  %119 = phi i8* [ %116, %115 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %117 ]
  %120 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %103, i8* %112, i8* %119)
  br label %121

121:                                              ; preds = %118, %92
  br label %122

122:                                              ; preds = %121, %13
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i64, i64* @bootverbose, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @pci_get_slot(i32 %129)
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @pci_get_function(i32 %131)
  %133 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %130, i32 %132)
  br label %134

134:                                              ; preds = %128, %125
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @device_get_ivars(i32 %136)
  %138 = call i32 @pci_cfg_save(i32 %135, i32 %137, i32 1)
  ret void
}

declare dso_local i8* @pci_describe_device(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i32 @pci_get_subclass(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @pci_cfg_save(i32, i32, i32) #1

declare dso_local i32 @device_get_ivars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
