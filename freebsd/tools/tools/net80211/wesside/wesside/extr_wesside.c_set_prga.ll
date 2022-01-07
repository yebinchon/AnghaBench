; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_set_prga.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_set_prga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i8* }

@prgainfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Got %d bytes of prga IV=(%.02x:%.02x:%.02x) PRGA=\00", align 1
@PRGA_FILE = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"open()\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"write()\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Wrote %d out of %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_prga(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 0), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 1), align 8
  %15 = call i32 @free(i8* %14)
  br label %16

16:                                               ; preds = %13, %4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @malloc(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 1), align 8
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 1), align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 0), align 8
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 2), align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @memcpy(i8* %27, i8* %28, i32 3)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %65, %25
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = xor i32 %43, %49
  br label %58

51:                                               ; preds = %34
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  br label %58

58:                                               ; preds = %51, %37
  %59 = phi i32 [ %50, %37 ], [ %57, %51 ]
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 1), align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 %60, i8* %64, align 1
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %30

68:                                               ; preds = %30
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 0), align 8
  %70 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 2), align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 2), align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 2), align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @time_print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %69, i8 zeroext %72, i8 zeroext %75, i8 zeroext %78)
  %80 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 1), align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 0), align 8
  %82 = call i32 @hexdump(i8* %80, i32 %81)
  %83 = load i8*, i8** %6, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %68
  br label %142

86:                                               ; preds = %68
  %87 = load i32, i32* @PRGA_FILE, align 4
  %88 = load i32, i32* @O_WRONLY, align 4
  %89 = load i32, i32* @O_CREAT, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @S_IRUSR, align 4
  %92 = load i32, i32* @S_IWUSR, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @S_IRGRP, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @S_IROTH, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @open(i32 %87, i32 %90, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %104

101:                                              ; preds = %86
  %102 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %103 = call i32 @exit(i32 1) #3
  unreachable

104:                                              ; preds = %86
  %105 = load i32, i32* %10, align 4
  %106 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 2), align 8
  %107 = call i32 @write(i32 %105, i8* %106, i32 3)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %112 = call i32 @exit(i32 1) #3
  unreachable

113:                                              ; preds = %104
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 3
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %117, i32 3)
  %119 = call i32 @exit(i32 1) #3
  unreachable

120:                                              ; preds = %113
  %121 = load i32, i32* %10, align 4
  %122 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 1), align 8
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 0), align 8
  %124 = call i32 @write(i32 %121, i8* %122, i32 %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %129 = call i32 @exit(i32 1) #3
  unreachable

130:                                              ; preds = %120
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 0), align 8
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prgainfo, i32 0, i32 0), align 8
  %137 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %136)
  %138 = call i32 @exit(i32 1) #3
  unreachable

139:                                              ; preds = %130
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @close(i32 %140)
  br label %142

142:                                              ; preds = %139, %85
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @time_print(i8*, i32, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @hexdump(i8*, i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
