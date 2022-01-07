; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_lock.c_g_bde_decode_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_lock.c_g_bde_decode_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_softc = type { i32 }
%struct.g_bde_key = type { i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, i8* }

@NLOCK_FIELDS = common dso_local global i32 0, align 4
@G_BDE_LOCKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"0000\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_bde_decode_lock(%struct.g_bde_softc* %0, %struct.g_bde_key* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_bde_softc*, align 8
  %6 = alloca %struct.g_bde_key*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [16 x i8], align 16
  %12 = alloca [16 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.g_bde_softc* %0, %struct.g_bde_softc** %5, align 8
  store %struct.g_bde_key* %1, %struct.g_bde_key** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i32, i32* @NLOCK_FIELDS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %10, align 8
  %21 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %22 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @g_bde_shuffle_lock(i32 %23, i32* %19)
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %117, %3
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @NLOCK_FIELDS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %120

29:                                               ; preds = %25
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %19, i64 %31
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %116 [
    i32 0, label %34
    i32 1, label %41
    i32 2, label %48
    i32 3, label %55
    i32 4, label %62
    i32 5, label %69
    i32 6, label %69
    i32 7, label %69
    i32 8, label %69
    i32 9, label %84
    i32 10, label %92
    i32 11, label %100
    i32 12, label %108
  ]

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = call i8* @le64dec(i8* %35)
  %37 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %38 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %37, i32 0, i32 8
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  store i8* %40, i8** %10, align 8
  br label %116

41:                                               ; preds = %29
  %42 = load i8*, i8** %10, align 8
  %43 = call i8* @le64dec(i8* %42)
  %44 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %45 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 8
  store i8* %47, i8** %10, align 8
  br label %116

48:                                               ; preds = %29
  %49 = load i8*, i8** %10, align 8
  %50 = call i8* @le64dec(i8* %49)
  %51 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %52 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %51, i32 0, i32 6
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  store i8* %54, i8** %10, align 8
  br label %116

55:                                               ; preds = %29
  %56 = load i8*, i8** %10, align 8
  %57 = call i8* @le32dec(i8* %56)
  %58 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %59 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  store i8* %61, i8** %10, align 8
  br label %116

62:                                               ; preds = %29
  %63 = load i8*, i8** %10, align 8
  %64 = call i8* @le32dec(i8* %63)
  %65 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %66 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 4
  store i8* %68, i8** %10, align 8
  br label %116

69:                                               ; preds = %29, %29, %29, %29
  %70 = load i8*, i8** %10, align 8
  %71 = call i8* @le64dec(i8* %70)
  %72 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %73 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %72, i32 0, i32 3
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %19, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 5
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %74, i64 %80
  store i8* %71, i8** %81, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 8
  store i8* %83, i8** %10, align 8
  br label %116

84:                                               ; preds = %29
  %85 = load i8*, i8** %10, align 8
  %86 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %87 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @bcopy(i8* %85, i8* %88, i32 8)
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 8
  store i8* %91, i8** %10, align 8
  br label %116

92:                                               ; preds = %29
  %93 = load i8*, i8** %10, align 8
  %94 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %95 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @bcopy(i8* %93, i8* %96, i32 8)
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 8
  store i8* %99, i8** %10, align 8
  br label %116

100:                                              ; preds = %29
  %101 = load i8*, i8** %10, align 8
  %102 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %103 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @bcopy(i8* %101, i8* %104, i32 8)
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 8
  store i8* %107, i8** %10, align 8
  br label %116

108:                                              ; preds = %29
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %111 = call i32 @bcopy(i8* %109, i8* %110, i32 16)
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 @bzero(i8* %112, i32 16)
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 16
  store i8* %115, i8** %10, align 8
  br label %116

116:                                              ; preds = %29, %108, %100, %92, %84, %69, %62, %55, %48, %41, %34
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %25

120:                                              ; preds = %25
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* @G_BDE_LOCKSIZE, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8*, i8** %10, align 8
  %126 = icmp ne i8* %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %142

128:                                              ; preds = %120
  %129 = call i32 @MD5Init(i32* %13)
  %130 = call i32 @MD5Update(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %131 = load i8*, i8** %7, align 8
  %132 = load i32, i32* @G_BDE_LOCKSIZE, align 4
  %133 = call i32 @MD5Update(i32* %13, i8* %131, i32 %132)
  %134 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %135 = call i32 @MD5Final(i8* %134, i32* %13)
  %136 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %137 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %138 = call i64 @bcmp(i8* %136, i8* %137, i32 16)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %142

141:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %142

142:                                              ; preds = %141, %140, %127
  %143 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %143)
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @g_bde_shuffle_lock(i32, i32*) #2

declare dso_local i8* @le64dec(i8*) #2

declare dso_local i8* @le32dec(i8*) #2

declare dso_local i32 @bcopy(i8*, i8*, i32) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @MD5Init(i32*) #2

declare dso_local i32 @MD5Update(i32*, i8*, i32) #2

declare dso_local i32 @MD5Final(i8*, i32*) #2

declare dso_local i64 @bcmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
