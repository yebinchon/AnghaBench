; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_packet.c_gdb_tx_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_packet.c_gdb_tx_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8)*, i32* }

@gdb_cur = common dso_local global %struct.TYPE_2__* null, align 8
@gdb_txbuf = common dso_local global i8* null, align 8
@gdb_txp = common dso_local global i8* null, align 8
@gdb_ackmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdb_tx_end() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  br label %5

5:                                                ; preds = %209, %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = call i32 (...) @gdb_tx_sendpacket()
  br label %203

12:                                               ; preds = %5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i8)*, i32 (i8)** %14, align 8
  %16 = call i32 %15(i8 signext 36)
  store i8 0, i8* %4, align 1
  %17 = load i8*, i8** @gdb_txbuf, align 8
  store i8* %17, i8** %1, align 8
  br label %18

18:                                               ; preds = %156, %115, %12
  %19 = load i8*, i8** %1, align 8
  %20 = load i8*, i8** @gdb_txp, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %178

22:                                               ; preds = %18
  %23 = load i8*, i8** %1, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %1, align 8
  %25 = load i8, i8* %23, align 1
  store i8 %25, i8* %3, align 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i8)*, i32 (i8)** %27, align 8
  %29 = load i8, i8* %3, align 1
  %30 = call i32 %28(i8 signext %29)
  %31 = load i8, i8* %3, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %4, align 1
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %34, %32
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %4, align 1
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %50, %22
  %38 = load i8*, i8** %1, align 8
  %39 = load i8*, i8** @gdb_txp, align 8
  %40 = icmp ult i8* %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i8*, i8** %1, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* %3, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br label %48

48:                                               ; preds = %41, %37
  %49 = phi i1 [ false, %37 ], [ %47, %41 ]
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  %53 = load i8*, i8** %1, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %1, align 8
  br label %37

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %94, %55
  %57 = load i32, i32* %2, align 4
  %58 = icmp sge i32 %57, 97
  br i1 %58, label %59, label %95

59:                                               ; preds = %56
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (i8)*, i32 (i8)** %61, align 8
  %63 = call i32 %62(i8 signext 42)
  %64 = load i8, i8* %4, align 1
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, 42
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %4, align 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (i8)*, i32 (i8)** %69, align 8
  %71 = call i32 %70(i8 signext 126)
  %72 = load i8, i8* %4, align 1
  %73 = zext i8 %72 to i32
  %74 = add nsw i32 %73, 126
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %4, align 1
  %76 = load i32, i32* %2, align 4
  %77 = sub nsw i32 %76, 97
  store i32 %77, i32* %2, align 4
  %78 = load i32, i32* %2, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %59
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32 (i8)*, i32 (i8)** %82, align 8
  %84 = load i8, i8* %3, align 1
  %85 = call i32 %83(i8 signext %84)
  %86 = load i8, i8* %3, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* %4, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %89, %87
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %4, align 1
  %92 = load i32, i32* %2, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %80, %59
  br label %56

95:                                               ; preds = %56
  %96 = load i32, i32* %2, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %112

98:                                               ; preds = %95
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (i8)*, i32 (i8)** %100, align 8
  %102 = load i8, i8* %3, align 1
  %103 = call i32 %101(i8 signext %102)
  %104 = load i8, i8* %3, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* %4, align 1
  %107 = zext i8 %106 to i32
  %108 = add nsw i32 %107, %105
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %4, align 1
  %110 = load i32, i32* %2, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %98, %95
  %113 = load i32, i32* %2, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %18

116:                                              ; preds = %112
  %117 = load i32, i32* %2, align 4
  %118 = icmp eq i32 %117, 7
  br i1 %118, label %119, label %133

119:                                              ; preds = %116
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32 (i8)*, i32 (i8)** %121, align 8
  %123 = load i8, i8* %3, align 1
  %124 = call i32 %122(i8 signext %123)
  %125 = load i8, i8* %3, align 1
  %126 = zext i8 %125 to i32
  %127 = load i8, i8* %4, align 1
  %128 = zext i8 %127 to i32
  %129 = add nsw i32 %128, %126
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %4, align 1
  %131 = load i32, i32* %2, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %119, %116
  %134 = load i32, i32* %2, align 4
  %135 = icmp eq i32 %134, 6
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %2, align 4
  %138 = icmp eq i32 %137, 14
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %2, align 4
  %141 = icmp eq i32 %140, 16
  br i1 %141, label %142, label %156

142:                                              ; preds = %139, %136, %133
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32 (i8)*, i32 (i8)** %144, align 8
  %146 = load i8, i8* %3, align 1
  %147 = call i32 %145(i8 signext %146)
  %148 = load i8, i8* %3, align 1
  %149 = zext i8 %148 to i32
  %150 = load i8, i8* %4, align 1
  %151 = zext i8 %150 to i32
  %152 = add nsw i32 %151, %149
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %4, align 1
  %154 = load i32, i32* %2, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %142, %139
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32 (i8)*, i32 (i8)** %158, align 8
  %160 = call i32 %159(i8 signext 42)
  %161 = load i8, i8* %4, align 1
  %162 = zext i8 %161 to i32
  %163 = add nsw i32 %162, 42
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %4, align 1
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32 (i8)*, i32 (i8)** %166, align 8
  %168 = load i32, i32* %2, align 4
  %169 = add nsw i32 %168, 29
  %170 = trunc i32 %169 to i8
  %171 = call i32 %167(i8 signext %170)
  %172 = load i32, i32* %2, align 4
  %173 = add nsw i32 %172, 29
  %174 = load i8, i8* %4, align 1
  %175 = zext i8 %174 to i32
  %176 = add nsw i32 %175, %173
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %4, align 1
  br label %18

178:                                              ; preds = %18
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32 (i8)*, i32 (i8)** %180, align 8
  %182 = call i32 %181(i8 signext 35)
  %183 = load i8, i8* %4, align 1
  %184 = zext i8 %183 to i32
  %185 = ashr i32 %184, 4
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %3, align 1
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32 (i8)*, i32 (i8)** %188, align 8
  %190 = load i8, i8* %3, align 1
  %191 = call signext i8 @N2C(i8 zeroext %190)
  %192 = call i32 %189(i8 signext %191)
  %193 = load i8, i8* %4, align 1
  %194 = zext i8 %193 to i32
  %195 = and i32 %194, 15
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %3, align 1
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gdb_cur, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32 (i8)*, i32 (i8)** %198, align 8
  %200 = load i8, i8* %3, align 1
  %201 = call signext i8 @N2C(i8 zeroext %200)
  %202 = call i32 %199(i8 signext %201)
  br label %203

203:                                              ; preds = %178, %10
  %204 = load i32, i32* @gdb_ackmode, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %203
  br label %213

207:                                              ; preds = %203
  %208 = call zeroext i8 (...) @gdb_getc()
  store i8 %208, i8* %3, align 1
  br label %209

209:                                              ; preds = %207
  %210 = load i8, i8* %3, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp ne i32 %211, 43
  br i1 %212, label %5, label %213

213:                                              ; preds = %209, %206
  ret i32 0
}

declare dso_local i32 @gdb_tx_sendpacket(...) #1

declare dso_local signext i8 @N2C(i8 zeroext) #1

declare dso_local zeroext i8 @gdb_getc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
