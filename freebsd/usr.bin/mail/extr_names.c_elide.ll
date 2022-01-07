; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_elide.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_elide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name = type { %struct.name*, %struct.name*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.name* @elide(%struct.name* %0) #0 {
  %2 = alloca %struct.name*, align 8
  %3 = alloca %struct.name*, align 8
  %4 = alloca %struct.name*, align 8
  %5 = alloca %struct.name*, align 8
  %6 = alloca %struct.name*, align 8
  %7 = alloca %struct.name*, align 8
  store %struct.name* %0, %struct.name** %3, align 8
  %8 = load %struct.name*, %struct.name** %3, align 8
  %9 = icmp eq %struct.name* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.name* null, %struct.name** %2, align 8
  br label %172

11:                                               ; preds = %1
  %12 = load %struct.name*, %struct.name** %3, align 8
  store %struct.name* %12, %struct.name** %6, align 8
  %13 = load %struct.name*, %struct.name** %3, align 8
  store %struct.name* %13, %struct.name** %4, align 8
  %14 = load %struct.name*, %struct.name** %4, align 8
  %15 = getelementptr inbounds %struct.name, %struct.name* %14, i32 0, i32 0
  %16 = load %struct.name*, %struct.name** %15, align 8
  store %struct.name* %16, %struct.name** %4, align 8
  %17 = load %struct.name*, %struct.name** %4, align 8
  %18 = icmp ne %struct.name* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.name*, %struct.name** %4, align 8
  %21 = getelementptr inbounds %struct.name, %struct.name* %20, i32 0, i32 1
  store %struct.name* null, %struct.name** %21, align 8
  br label %22

22:                                               ; preds = %19, %11
  %23 = load %struct.name*, %struct.name** %6, align 8
  %24 = getelementptr inbounds %struct.name, %struct.name* %23, i32 0, i32 0
  store %struct.name* null, %struct.name** %24, align 8
  br label %25

25:                                               ; preds = %89, %75, %58, %22
  %26 = load %struct.name*, %struct.name** %4, align 8
  %27 = icmp ne %struct.name* %26, null
  br i1 %27, label %28, label %110

28:                                               ; preds = %25
  %29 = load %struct.name*, %struct.name** %6, align 8
  store %struct.name* %29, %struct.name** %5, align 8
  br label %30

30:                                               ; preds = %45, %28
  %31 = load %struct.name*, %struct.name** %5, align 8
  %32 = getelementptr inbounds %struct.name, %struct.name* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.name*, %struct.name** %4, align 8
  %35 = getelementptr inbounds %struct.name, %struct.name* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @strcasecmp(i32 %33, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load %struct.name*, %struct.name** %5, align 8
  %41 = getelementptr inbounds %struct.name, %struct.name* %40, i32 0, i32 0
  %42 = load %struct.name*, %struct.name** %41, align 8
  %43 = icmp eq %struct.name* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %49

45:                                               ; preds = %39
  %46 = load %struct.name*, %struct.name** %5, align 8
  %47 = getelementptr inbounds %struct.name, %struct.name* %46, i32 0, i32 0
  %48 = load %struct.name*, %struct.name** %47, align 8
  store %struct.name* %48, %struct.name** %5, align 8
  br label %30

49:                                               ; preds = %44, %30
  %50 = load %struct.name*, %struct.name** %5, align 8
  %51 = getelementptr inbounds %struct.name, %struct.name* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.name*, %struct.name** %4, align 8
  %54 = getelementptr inbounds %struct.name, %struct.name* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @strcasecmp(i32 %52, i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %49
  %59 = load %struct.name*, %struct.name** %4, align 8
  %60 = load %struct.name*, %struct.name** %5, align 8
  %61 = getelementptr inbounds %struct.name, %struct.name* %60, i32 0, i32 0
  store %struct.name* %59, %struct.name** %61, align 8
  %62 = load %struct.name*, %struct.name** %5, align 8
  %63 = load %struct.name*, %struct.name** %4, align 8
  %64 = getelementptr inbounds %struct.name, %struct.name* %63, i32 0, i32 1
  store %struct.name* %62, %struct.name** %64, align 8
  %65 = load %struct.name*, %struct.name** %4, align 8
  store %struct.name* %65, %struct.name** %5, align 8
  %66 = load %struct.name*, %struct.name** %4, align 8
  %67 = getelementptr inbounds %struct.name, %struct.name* %66, i32 0, i32 0
  %68 = load %struct.name*, %struct.name** %67, align 8
  store %struct.name* %68, %struct.name** %4, align 8
  %69 = load %struct.name*, %struct.name** %5, align 8
  %70 = getelementptr inbounds %struct.name, %struct.name* %69, i32 0, i32 0
  store %struct.name* null, %struct.name** %70, align 8
  br label %25

71:                                               ; preds = %49
  %72 = load %struct.name*, %struct.name** %5, align 8
  %73 = load %struct.name*, %struct.name** %6, align 8
  %74 = icmp eq %struct.name* %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.name*, %struct.name** %4, align 8
  store %struct.name* %76, %struct.name** %5, align 8
  %77 = load %struct.name*, %struct.name** %4, align 8
  %78 = getelementptr inbounds %struct.name, %struct.name* %77, i32 0, i32 0
  %79 = load %struct.name*, %struct.name** %78, align 8
  store %struct.name* %79, %struct.name** %4, align 8
  %80 = load %struct.name*, %struct.name** %6, align 8
  %81 = load %struct.name*, %struct.name** %5, align 8
  %82 = getelementptr inbounds %struct.name, %struct.name* %81, i32 0, i32 0
  store %struct.name* %80, %struct.name** %82, align 8
  %83 = load %struct.name*, %struct.name** %5, align 8
  %84 = load %struct.name*, %struct.name** %6, align 8
  %85 = getelementptr inbounds %struct.name, %struct.name* %84, i32 0, i32 1
  store %struct.name* %83, %struct.name** %85, align 8
  %86 = load %struct.name*, %struct.name** %5, align 8
  %87 = getelementptr inbounds %struct.name, %struct.name* %86, i32 0, i32 1
  store %struct.name* null, %struct.name** %87, align 8
  %88 = load %struct.name*, %struct.name** %5, align 8
  store %struct.name* %88, %struct.name** %6, align 8
  br label %25

89:                                               ; preds = %71
  %90 = load %struct.name*, %struct.name** %4, align 8
  store %struct.name* %90, %struct.name** %7, align 8
  %91 = load %struct.name*, %struct.name** %4, align 8
  %92 = getelementptr inbounds %struct.name, %struct.name* %91, i32 0, i32 0
  %93 = load %struct.name*, %struct.name** %92, align 8
  store %struct.name* %93, %struct.name** %4, align 8
  %94 = load %struct.name*, %struct.name** %5, align 8
  %95 = load %struct.name*, %struct.name** %7, align 8
  %96 = getelementptr inbounds %struct.name, %struct.name* %95, i32 0, i32 0
  store %struct.name* %94, %struct.name** %96, align 8
  %97 = load %struct.name*, %struct.name** %5, align 8
  %98 = getelementptr inbounds %struct.name, %struct.name* %97, i32 0, i32 1
  %99 = load %struct.name*, %struct.name** %98, align 8
  %100 = load %struct.name*, %struct.name** %7, align 8
  %101 = getelementptr inbounds %struct.name, %struct.name* %100, i32 0, i32 1
  store %struct.name* %99, %struct.name** %101, align 8
  %102 = load %struct.name*, %struct.name** %7, align 8
  %103 = load %struct.name*, %struct.name** %5, align 8
  %104 = getelementptr inbounds %struct.name, %struct.name* %103, i32 0, i32 1
  %105 = load %struct.name*, %struct.name** %104, align 8
  %106 = getelementptr inbounds %struct.name, %struct.name* %105, i32 0, i32 0
  store %struct.name* %102, %struct.name** %106, align 8
  %107 = load %struct.name*, %struct.name** %7, align 8
  %108 = load %struct.name*, %struct.name** %5, align 8
  %109 = getelementptr inbounds %struct.name, %struct.name* %108, i32 0, i32 1
  store %struct.name* %107, %struct.name** %109, align 8
  br label %25

110:                                              ; preds = %25
  %111 = load %struct.name*, %struct.name** %6, align 8
  store %struct.name* %111, %struct.name** %4, align 8
  br label %112

112:                                              ; preds = %166, %146, %110
  %113 = load %struct.name*, %struct.name** %4, align 8
  %114 = icmp ne %struct.name* %113, null
  br i1 %114, label %115, label %170

115:                                              ; preds = %112
  %116 = load %struct.name*, %struct.name** %4, align 8
  store %struct.name* %116, %struct.name** %5, align 8
  br label %117

117:                                              ; preds = %135, %115
  %118 = load %struct.name*, %struct.name** %5, align 8
  %119 = getelementptr inbounds %struct.name, %struct.name* %118, i32 0, i32 0
  %120 = load %struct.name*, %struct.name** %119, align 8
  %121 = icmp ne %struct.name* %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %117
  %123 = load %struct.name*, %struct.name** %4, align 8
  %124 = getelementptr inbounds %struct.name, %struct.name* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.name*, %struct.name** %5, align 8
  %127 = getelementptr inbounds %struct.name, %struct.name* %126, i32 0, i32 0
  %128 = load %struct.name*, %struct.name** %127, align 8
  %129 = getelementptr inbounds %struct.name, %struct.name* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @strcasecmp(i32 %125, i32 %130)
  %132 = icmp eq i64 %131, 0
  br label %133

133:                                              ; preds = %122, %117
  %134 = phi i1 [ false, %117 ], [ %132, %122 ]
  br i1 %134, label %135, label %139

135:                                              ; preds = %133
  %136 = load %struct.name*, %struct.name** %5, align 8
  %137 = getelementptr inbounds %struct.name, %struct.name* %136, i32 0, i32 0
  %138 = load %struct.name*, %struct.name** %137, align 8
  store %struct.name* %138, %struct.name** %5, align 8
  br label %117

139:                                              ; preds = %133
  %140 = load %struct.name*, %struct.name** %5, align 8
  %141 = load %struct.name*, %struct.name** %4, align 8
  %142 = icmp eq %struct.name* %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = load %struct.name*, %struct.name** %5, align 8
  %145 = icmp eq %struct.name* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %143, %139
  %147 = load %struct.name*, %struct.name** %4, align 8
  %148 = getelementptr inbounds %struct.name, %struct.name* %147, i32 0, i32 0
  %149 = load %struct.name*, %struct.name** %148, align 8
  store %struct.name* %149, %struct.name** %4, align 8
  br label %112

150:                                              ; preds = %143
  %151 = load %struct.name*, %struct.name** %5, align 8
  %152 = getelementptr inbounds %struct.name, %struct.name* %151, i32 0, i32 0
  %153 = load %struct.name*, %struct.name** %152, align 8
  %154 = load %struct.name*, %struct.name** %4, align 8
  %155 = getelementptr inbounds %struct.name, %struct.name* %154, i32 0, i32 0
  store %struct.name* %153, %struct.name** %155, align 8
  %156 = load %struct.name*, %struct.name** %5, align 8
  %157 = getelementptr inbounds %struct.name, %struct.name* %156, i32 0, i32 0
  %158 = load %struct.name*, %struct.name** %157, align 8
  %159 = icmp ne %struct.name* %158, null
  br i1 %159, label %160, label %166

160:                                              ; preds = %150
  %161 = load %struct.name*, %struct.name** %4, align 8
  %162 = load %struct.name*, %struct.name** %5, align 8
  %163 = getelementptr inbounds %struct.name, %struct.name* %162, i32 0, i32 0
  %164 = load %struct.name*, %struct.name** %163, align 8
  %165 = getelementptr inbounds %struct.name, %struct.name* %164, i32 0, i32 1
  store %struct.name* %161, %struct.name** %165, align 8
  br label %166

166:                                              ; preds = %160, %150
  %167 = load %struct.name*, %struct.name** %4, align 8
  %168 = getelementptr inbounds %struct.name, %struct.name* %167, i32 0, i32 0
  %169 = load %struct.name*, %struct.name** %168, align 8
  store %struct.name* %169, %struct.name** %4, align 8
  br label %112

170:                                              ; preds = %112
  %171 = load %struct.name*, %struct.name** %6, align 8
  store %struct.name* %171, %struct.name** %2, align 8
  br label %172

172:                                              ; preds = %170, %10
  %173 = load %struct.name*, %struct.name** %2, align 8
  ret %struct.name* %173
}

declare dso_local i64 @strcasecmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
