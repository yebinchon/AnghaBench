; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_parse_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_parse_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.businfo = type { %struct.slotinfo* }
%struct.slotinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"%d:%d:%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@MAXBUSES = common dso_local global i32 0, align 4
@MAXSLOTS = common dso_local global i32 0, align 4
@MAXFUNCS = common dso_local global i32 0, align 4
@pci_businfo = common dso_local global %struct.businfo** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"pci slot %d:%d already occupied!\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"pci slot %d:%d: unknown device \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_parse_slot(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.businfo*, align 8
  %4 = alloca %struct.slotinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %9, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %7, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 44)
  store i8* %16, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load i8*, i8** %8, align 8
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 44)
  store i8* %23, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i8*, i8** %8, align 8
  store i8 0, i8* %26, align 1
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %28, i8** %6, align 8
  br label %29

29:                                               ; preds = %25, %18
  br label %33

30:                                               ; preds = %1
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @pci_parse_slot_usage(i8* %31)
  br label %138

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11, i32* %12)
  %36 = icmp ne i32 %35, 3
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %11, i32* %12)
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %11)
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 -1, i32* %11, align 4
  br label %46

46:                                               ; preds = %45, %41
  br label %47

47:                                               ; preds = %46, %37
  br label %48

48:                                               ; preds = %47, %33
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @MAXBUSES, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @MAXSLOTS, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @MAXFUNCS, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %62, %58, %55, %51, %48
  %70 = load i8*, i8** %2, align 8
  %71 = call i32 @pci_parse_slot_usage(i8* %70)
  br label %138

72:                                               ; preds = %65
  %73 = load %struct.businfo**, %struct.businfo*** @pci_businfo, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.businfo*, %struct.businfo** %73, i64 %75
  %77 = load %struct.businfo*, %struct.businfo** %76, align 8
  %78 = icmp eq %struct.businfo* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = call %struct.businfo* @calloc(i32 1, i32 8)
  %81 = load %struct.businfo**, %struct.businfo*** @pci_businfo, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.businfo*, %struct.businfo** %81, i64 %83
  store %struct.businfo* %80, %struct.businfo** %84, align 8
  br label %85

85:                                               ; preds = %79, %72
  %86 = load %struct.businfo**, %struct.businfo*** @pci_businfo, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.businfo*, %struct.businfo** %86, i64 %88
  %90 = load %struct.businfo*, %struct.businfo** %89, align 8
  store %struct.businfo* %90, %struct.businfo** %3, align 8
  %91 = load %struct.businfo*, %struct.businfo** %3, align 8
  %92 = getelementptr inbounds %struct.businfo, %struct.businfo* %91, i32 0, i32 0
  %93 = load %struct.slotinfo*, %struct.slotinfo** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %93, i64 %95
  store %struct.slotinfo* %96, %struct.slotinfo** %4, align 8
  %97 = load %struct.slotinfo*, %struct.slotinfo** %4, align 8
  %98 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %85
  %107 = load i32, i32* @stderr, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %109)
  br label %138

111:                                              ; preds = %85
  %112 = load i8*, i8** %5, align 8
  %113 = call i32* @pci_emul_finddev(i8* %112)
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32, i32* @stderr, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %117, i32 %118, i8* %119)
  br label %138

121:                                              ; preds = %111
  store i32 0, i32* %9, align 4
  %122 = load i8*, i8** %5, align 8
  %123 = load %struct.slotinfo*, %struct.slotinfo** %4, align 8
  %124 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i8* %122, i8** %129, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load %struct.slotinfo*, %struct.slotinfo** %4, align 8
  %132 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i8* %130, i8** %137, align 8
  br label %138

138:                                              ; preds = %121, %115, %106, %69, %30
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 @free(i8* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %9, align 4
  ret i32 %145
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pci_parse_slot_usage(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local %struct.businfo* @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32* @pci_emul_finddev(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
