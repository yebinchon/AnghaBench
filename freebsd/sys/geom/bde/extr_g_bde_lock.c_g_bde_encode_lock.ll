; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_lock.c_g_bde_encode_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_lock.c_g_bde_encode_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_key = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@NLOCK_FIELDS = common dso_local global i32 0, align 4
@G_BDE_LOCKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"0000\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_bde_encode_lock(i8* %0, %struct.g_bde_key* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.g_bde_key*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.g_bde_key* %1, %struct.g_bde_key** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* @NLOCK_FIELDS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %11, align 8
  store i8* null, i8** %10, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @g_bde_shuffle_lock(i8* %20, i32* %18)
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %118, %3
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @NLOCK_FIELDS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %121

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %18, i64 %28
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %117 [
    i32 0, label %31
    i32 1, label %39
    i32 2, label %47
    i32 3, label %55
    i32 4, label %63
    i32 5, label %71
    i32 6, label %71
    i32 7, label %71
    i32 8, label %71
    i32 9, label %87
    i32 10, label %95
    i32 11, label %103
    i32 12, label %111
  ]

31:                                               ; preds = %26
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %34 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @le64enc(i8* %32, i32 %35)
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 8
  store i8* %38, i8** %11, align 8
  br label %117

39:                                               ; preds = %26
  %40 = load i8*, i8** %11, align 8
  %41 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %42 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le64enc(i8* %40, i32 %43)
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 8
  store i8* %46, i8** %11, align 8
  br label %117

47:                                               ; preds = %26
  %48 = load i8*, i8** %11, align 8
  %49 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %50 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le64enc(i8* %48, i32 %51)
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  store i8* %54, i8** %11, align 8
  br label %117

55:                                               ; preds = %26
  %56 = load i8*, i8** %11, align 8
  %57 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %58 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32enc(i8* %56, i32 %59)
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 4
  store i8* %62, i8** %11, align 8
  br label %117

63:                                               ; preds = %26
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %66 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @le32enc(i8* %64, i32 %67)
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 4
  store i8* %70, i8** %11, align 8
  br label %117

71:                                               ; preds = %26, %26, %26, %26
  %72 = load i8*, i8** %11, align 8
  %73 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %74 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %18, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 5
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %75, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le64enc(i8* %72, i32 %83)
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 8
  store i8* %86, i8** %11, align 8
  br label %117

87:                                               ; preds = %26
  %88 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %89 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @bcopy(i32 %90, i8* %91, i32 4)
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  store i8* %94, i8** %11, align 8
  br label %117

95:                                               ; preds = %26
  %96 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %97 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @bcopy(i32 %98, i8* %99, i32 4)
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 4
  store i8* %102, i8** %11, align 8
  br label %117

103:                                              ; preds = %26
  %104 = load %struct.g_bde_key*, %struct.g_bde_key** %6, align 8
  %105 = getelementptr inbounds %struct.g_bde_key, %struct.g_bde_key* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @bcopy(i32 %106, i8* %107, i32 4)
  %109 = load i8*, i8** %11, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 4
  store i8* %110, i8** %11, align 8
  br label %117

111:                                              ; preds = %26
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @bzero(i8* %112, i32 16)
  %114 = load i8*, i8** %11, align 8
  store i8* %114, i8** %10, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 16
  store i8* %116, i8** %11, align 8
  br label %117

117:                                              ; preds = %26, %111, %103, %95, %87, %71, %63, %55, %47, %39, %31
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %12, align 4
  br label %22

121:                                              ; preds = %22
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* @G_BDE_LOCKSIZE, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8*, i8** %11, align 8
  %127 = icmp ne i8* %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %141

129:                                              ; preds = %121
  %130 = load i8*, i8** %10, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %141

133:                                              ; preds = %129
  %134 = call i32 @MD5Init(i32* %13)
  %135 = call i32 @MD5Update(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* @G_BDE_LOCKSIZE, align 4
  %138 = call i32 @MD5Update(i32* %13, i8* %136, i32 %137)
  %139 = load i8*, i8** %10, align 8
  %140 = call i32 @MD5Final(i8* %139, i32* %13)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %141

141:                                              ; preds = %133, %132, %128
  %142 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @g_bde_shuffle_lock(i8*, i32*) #2

declare dso_local i32 @le64enc(i8*, i32) #2

declare dso_local i32 @le32enc(i8*, i32) #2

declare dso_local i32 @bcopy(i32, i8*, i32) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @MD5Init(i32*) #2

declare dso_local i32 @MD5Update(i32*, i8*, i32) #2

declare dso_local i32 @MD5Final(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
