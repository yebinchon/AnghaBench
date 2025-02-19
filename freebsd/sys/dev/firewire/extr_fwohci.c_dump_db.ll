; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_dump_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_dump_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.TYPE_2__, %struct.fwohci_dbch*, %struct.fwohci_dbch*, %struct.fwohci_dbch, %struct.fwohci_dbch, %struct.fwohci_dbch, %struct.fwohci_dbch }
%struct.TYPE_2__ = type { i32 }
%struct.fwohci_dbch = type { i32, i32, %struct.fwohcidb_tr* }
%struct.fwohcidb_tr = type { i32, %struct.fwohcidb* }
%struct.fwohcidb = type { i32 }

@OHCI_ATQOFF = common dso_local global i32 0, align 4
@OHCI_ATSOFF = common dso_local global i32 0, align 4
@OHCI_ARQOFF = common dso_local global i32 0, align 4
@OHCI_ARSOFF = common dso_local global i32 0, align 4
@IRX_CH = common dso_local global i32 0, align 4
@ITX_CH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No DB is attached ch=%d\0A\00", align 1
@link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Current DB %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"dbdump err ch = %d cmd = 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_db(%struct.fwohci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.fwohci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fwohci_dbch*, align 8
  %6 = alloca %struct.fwohcidb_tr*, align 8
  %7 = alloca %struct.fwohcidb_tr*, align 8
  %8 = alloca %struct.fwohcidb_tr*, align 8
  %9 = alloca %struct.fwohcidb*, align 8
  %10 = alloca %struct.fwohcidb*, align 8
  %11 = alloca %struct.fwohcidb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.fwohcidb_tr* null, %struct.fwohcidb_tr** %6, align 8
  store %struct.fwohcidb_tr* null, %struct.fwohcidb_tr** %8, align 8
  store %struct.fwohcidb* null, %struct.fwohcidb** %9, align 8
  store %struct.fwohcidb* null, %struct.fwohcidb** %11, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @OHCI_ATQOFF, align 4
  store i32 %19, i32* %15, align 4
  %20 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %21 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %20, i32 0, i32 6
  store %struct.fwohci_dbch* %21, %struct.fwohci_dbch** %5, align 8
  br label %77

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @OHCI_ATSOFF, align 4
  store i32 %26, i32* %15, align 4
  %27 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %28 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %27, i32 0, i32 5
  store %struct.fwohci_dbch* %28, %struct.fwohci_dbch** %5, align 8
  br label %76

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @OHCI_ARQOFF, align 4
  store i32 %33, i32* %15, align 4
  %34 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %35 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %34, i32 0, i32 4
  store %struct.fwohci_dbch* %35, %struct.fwohci_dbch** %5, align 8
  br label %75

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @OHCI_ARSOFF, align 4
  store i32 %40, i32* %15, align 4
  %41 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %42 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %41, i32 0, i32 3
  store %struct.fwohci_dbch* %42, %struct.fwohci_dbch** %5, align 8
  br label %74

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @IRX_CH, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @ITX_CH, align 4
  %50 = sub nsw i32 %48, %49
  %51 = call i32 @OHCI_ITCTL(i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %53 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %52, i32 0, i32 2
  %54 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @ITX_CH, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %54, i64 %58
  store %struct.fwohci_dbch* %59, %struct.fwohci_dbch** %5, align 8
  br label %73

60:                                               ; preds = %43
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @IRX_CH, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 @OHCI_IRCTL(i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %66 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %65, i32 0, i32 1
  %67 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @IRX_CH, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %67, i64 %71
  store %struct.fwohci_dbch* %72, %struct.fwohci_dbch** %5, align 8
  br label %73

73:                                               ; preds = %60, %47
  br label %74

74:                                               ; preds = %73, %39
  br label %75

75:                                               ; preds = %74, %32
  br label %76

76:                                               ; preds = %75, %25
  br label %77

77:                                               ; preds = %76, %18
  %78 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 12
  %81 = call i32 @OREAD(%struct.fwohci_softc* %78, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %83 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %77
  %87 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %88 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %179

93:                                               ; preds = %77
  %94 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %95 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %94, i32 0, i32 2
  %96 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %95, align 8
  store %struct.fwohcidb_tr* %96, %struct.fwohcidb_tr** %7, align 8
  %97 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %98 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %97, i32 0, i32 1
  %99 = load %struct.fwohcidb*, %struct.fwohcidb** %98, align 8
  store %struct.fwohcidb* %99, %struct.fwohcidb** %10, align 8
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %157, %93
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %103 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %160

106:                                              ; preds = %100
  %107 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %108 = load i32, i32* @link, align 4
  %109 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %107, i32 %108)
  store %struct.fwohcidb_tr* %109, %struct.fwohcidb_tr** %6, align 8
  %110 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %6, align 8
  %111 = icmp eq %struct.fwohcidb_tr* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store %struct.fwohcidb* null, %struct.fwohcidb** %9, align 8
  br label %161

113:                                              ; preds = %106
  %114 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %6, align 8
  %115 = load i32, i32* @link, align 4
  %116 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %114, i32 %115)
  store %struct.fwohcidb_tr* %116, %struct.fwohcidb_tr** %8, align 8
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %143, %113
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %120 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %146

123:                                              ; preds = %117
  %124 = load i32, i32* %14, align 4
  %125 = and i32 %124, -16
  %126 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %6, align 8
  %127 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %125, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %123
  %131 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %6, align 8
  %132 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %131, i32 0, i32 1
  %133 = load %struct.fwohcidb*, %struct.fwohcidb** %132, align 8
  store %struct.fwohcidb* %133, %struct.fwohcidb** %9, align 8
  %134 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %8, align 8
  %135 = icmp ne %struct.fwohcidb_tr* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %8, align 8
  %138 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %137, i32 0, i32 1
  %139 = load %struct.fwohcidb*, %struct.fwohcidb** %138, align 8
  store %struct.fwohcidb* %139, %struct.fwohcidb** %11, align 8
  br label %141

140:                                              ; preds = %130
  store %struct.fwohcidb* null, %struct.fwohcidb** %11, align 8
  br label %141

141:                                              ; preds = %140, %136
  br label %161

142:                                              ; preds = %123
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %117

146:                                              ; preds = %117
  %147 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %148 = load i32, i32* @link, align 4
  %149 = call %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr* %147, i32 %148)
  store %struct.fwohcidb_tr* %149, %struct.fwohcidb_tr** %7, align 8
  %150 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %151 = icmp eq %struct.fwohcidb_tr* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store %struct.fwohcidb* null, %struct.fwohcidb** %9, align 8
  br label %161

153:                                              ; preds = %146
  %154 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %7, align 8
  %155 = getelementptr inbounds %struct.fwohcidb_tr, %struct.fwohcidb_tr* %154, i32 0, i32 1
  %156 = load %struct.fwohcidb*, %struct.fwohcidb** %155, align 8
  store %struct.fwohcidb* %156, %struct.fwohcidb** %10, align 8
  br label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %100

160:                                              ; preds = %100
  br label %161

161:                                              ; preds = %160, %152, %141, %112
  %162 = load %struct.fwohcidb*, %struct.fwohcidb** %9, align 8
  %163 = icmp ne %struct.fwohcidb* %162, null
  br i1 %163, label %164, label %174

164:                                              ; preds = %161
  %165 = load i32, i32* %4, align 4
  %166 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %165)
  %167 = load %struct.fwohcidb_tr*, %struct.fwohcidb_tr** %6, align 8
  %168 = load %struct.fwohcidb*, %struct.fwohcidb** %9, align 8
  %169 = load i32, i32* %4, align 4
  %170 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %5, align 8
  %171 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @print_db(%struct.fwohcidb_tr* %167, %struct.fwohcidb* %168, i32 %169, i32 %172)
  br label %178

174:                                              ; preds = %161
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* %14, align 4
  %177 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %164
  br label %179

179:                                              ; preds = %178, %86
  ret void
}

declare dso_local i32 @OHCI_ITCTL(i32) #1

declare dso_local i32 @OHCI_IRCTL(i32) #1

declare dso_local i32 @OREAD(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local %struct.fwohcidb_tr* @STAILQ_NEXT(%struct.fwohcidb_tr*, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @print_db(%struct.fwohcidb_tr*, %struct.fwohcidb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
