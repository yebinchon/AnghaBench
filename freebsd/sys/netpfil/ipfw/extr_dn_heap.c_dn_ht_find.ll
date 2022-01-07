; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_heap.c_dn_ht_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_heap.c_dn_ht_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_ht = type { i32, i32 (i64, i32, i8*)*, i8**, i32, i8* (i64, i32, i8*)*, i32, i64 (i8*, i64, i32, i8*)* }

@DNHT_MATCH_PTR = common dso_local global i32 0, align 4
@DNHT_REMOVE = common dso_local global i32 0, align 4
@DNHT_INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dn_ht_find(%struct.dn_ht* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dn_ht*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  store %struct.dn_ht* %0, %struct.dn_ht** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %14 = icmp eq %struct.dn_ht* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %164

16:                                               ; preds = %4
  %17 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %18 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %34

22:                                               ; preds = %16
  %23 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %24 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %23, i32 0, i32 1
  %25 = load i32 (i64, i32, i8*)*, i32 (i64, i32, i8*)** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 %25(i64 %26, i32 %27, i8* %28)
  %30 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %31 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %29, %32
  br label %34

34:                                               ; preds = %22, %21
  %35 = phi i32 [ 0, %21 ], [ %33, %22 ]
  store i32 %35, i32* %10, align 4
  %36 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %37 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  store i8** %41, i8*** %11, align 8
  br label %42

42:                                               ; preds = %71, %34
  %43 = load i8**, i8*** %11, align 8
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @DNHT_MATCH_PTR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i64, i64* %7, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %79

57:                                               ; preds = %51
  br label %70

58:                                               ; preds = %46
  %59 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %60 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %59, i32 0, i32 6
  %61 = load i64 (i8*, i64, i32, i8*)*, i64 (i8*, i64, i32, i8*)** %60, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = call i64 %61(i8* %62, i64 %63, i32 %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %79

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %57
  br label %71

71:                                               ; preds = %70
  %72 = load i8*, i8** %12, align 8
  %73 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %74 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  %78 = bitcast i8* %77 to i8**
  store i8** %78, i8*** %11, align 8
  br label %42

79:                                               ; preds = %68, %56, %42
  %80 = load i8*, i8** %12, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %109

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @DNHT_REMOVE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %82
  %88 = load i8*, i8** %12, align 8
  %89 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %90 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = bitcast i8* %93 to i8**
  %95 = load i8*, i8** %94, align 8
  %96 = load i8**, i8*** %11, align 8
  store i8* %95, i8** %96, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %99 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %97, i64 %101
  %103 = bitcast i8* %102 to i8**
  store i8* null, i8** %103, align 8
  %104 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %105 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %87, %82
  br label %162

109:                                              ; preds = %79
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @DNHT_INSERT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %161

114:                                              ; preds = %109
  %115 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %116 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %115, i32 0, i32 4
  %117 = load i8* (i64, i32, i8*)*, i8* (i64, i32, i8*)** %116, align 8
  %118 = icmp ne i8* (i64, i32, i8*)* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %121 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %120, i32 0, i32 4
  %122 = load i8* (i64, i32, i8*)*, i8* (i64, i32, i8*)** %121, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i8*, i8** %9, align 8
  %126 = call i8* %122(i64 %123, i32 %124, i8* %125)
  br label %130

127:                                              ; preds = %114
  %128 = load i64, i64* %7, align 8
  %129 = inttoptr i64 %128 to i8*
  br label %130

130:                                              ; preds = %127, %119
  %131 = phi i8* [ %126, %119 ], [ %129, %127 ]
  store i8* %131, i8** %12, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %160

134:                                              ; preds = %130
  %135 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %136 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %140 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %139, i32 0, i32 2
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %148 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %146, i64 %150
  %152 = bitcast i8* %151 to i8**
  store i8* %145, i8** %152, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = load %struct.dn_ht*, %struct.dn_ht** %6, align 8
  %155 = getelementptr inbounds %struct.dn_ht, %struct.dn_ht* %154, i32 0, i32 2
  %156 = load i8**, i8*** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  store i8* %153, i8** %159, align 8
  br label %160

160:                                              ; preds = %134, %130
  br label %161

161:                                              ; preds = %160, %109
  br label %162

162:                                              ; preds = %161, %108
  %163 = load i8*, i8** %12, align 8
  store i8* %163, i8** %5, align 8
  br label %164

164:                                              ; preds = %162, %15
  %165 = load i8*, i8** %5, align 8
  ret i8* %165
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
