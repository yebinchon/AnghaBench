; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_ctlinfo.c_ctl_freeinf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_ctlinfo.c_ctl_freeinf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cjobinfo = type { %struct.cjprivate* }
%struct.cjprivate = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.cjprivate* }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"in ctl_freeinf(%p): invalid cjinf (cpriv %p)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_freeinf(%struct.cjobinfo* %0) #0 {
  %2 = alloca %struct.cjobinfo*, align 8
  %3 = alloca %struct.cjprivate*, align 8
  store %struct.cjobinfo* %0, %struct.cjobinfo** %2, align 8
  %4 = load %struct.cjobinfo*, %struct.cjobinfo** %2, align 8
  %5 = icmp eq %struct.cjobinfo* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %177

7:                                                ; preds = %1
  %8 = load %struct.cjobinfo*, %struct.cjobinfo** %2, align 8
  %9 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %8, i32 0, i32 0
  %10 = load %struct.cjprivate*, %struct.cjprivate** %9, align 8
  store %struct.cjprivate* %10, %struct.cjprivate** %3, align 8
  %11 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %12 = icmp eq %struct.cjprivate* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %15 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %16 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 7
  %18 = load %struct.cjprivate*, %struct.cjprivate** %17, align 8
  %19 = icmp ne %struct.cjprivate* %14, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %13, %7
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = load %struct.cjobinfo*, %struct.cjobinfo** %2, align 8
  %23 = bitcast %struct.cjobinfo* %22 to i8*
  %24 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %25 = bitcast %struct.cjprivate* %24 to i8*
  %26 = call i32 @syslog(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %25)
  br label %177

27:                                               ; preds = %13
  %28 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %29 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %37 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.cjprivate*
  %42 = call i32 @free(%struct.cjprivate* %41)
  %43 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %44 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 6
  store i32 0, i32* %45, align 8
  br label %46

46:                                               ; preds = %35, %27
  %47 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %48 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %46
  %55 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %56 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to %struct.cjprivate*
  %61 = call i32 @free(%struct.cjprivate* %60)
  %62 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %63 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %54, %46
  %66 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %67 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %65
  %74 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %75 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to %struct.cjprivate*
  %80 = call i32 @free(%struct.cjprivate* %79)
  %81 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %82 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %73, %65
  %85 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %86 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %84
  %93 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %94 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to %struct.cjprivate*
  %99 = call i32 @free(%struct.cjprivate* %98)
  %100 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %101 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %92, %84
  %104 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %105 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %103
  %112 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %113 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to %struct.cjprivate*
  %118 = call i32 @free(%struct.cjprivate* %117)
  %119 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %120 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store i32 0, i32* %121, align 8
  br label %122

122:                                              ; preds = %111, %103
  %123 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %124 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %141

130:                                              ; preds = %122
  %131 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %132 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to %struct.cjprivate*
  %137 = call i32 @free(%struct.cjprivate* %136)
  %138 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %139 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  br label %141

141:                                              ; preds = %130, %122
  %142 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %143 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %160

149:                                              ; preds = %141
  %150 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %151 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to %struct.cjprivate*
  %156 = call i32 @free(%struct.cjprivate* %155)
  %157 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %158 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  store i32 0, i32* %159, align 8
  br label %160

160:                                              ; preds = %149, %141
  %161 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %162 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %167 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @fclose(i32* %168)
  %170 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %171 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %170, i32 0, i32 0
  store i32* null, i32** %171, align 8
  br label %172

172:                                              ; preds = %165, %160
  %173 = load %struct.cjobinfo*, %struct.cjobinfo** %2, align 8
  %174 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %173, i32 0, i32 0
  store %struct.cjprivate* null, %struct.cjprivate** %174, align 8
  %175 = load %struct.cjprivate*, %struct.cjprivate** %3, align 8
  %176 = call i32 @free(%struct.cjprivate* %175)
  br label %177

177:                                              ; preds = %172, %20, %6
  ret void
}

declare dso_local i32 @syslog(i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(%struct.cjprivate*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
